package controllers

import (
	"strconv"
	"zeroHunger/database"
	"zeroHunger/models"

	"github.com/gofiber/fiber/v2"
	"github.com/golang-jwt/jwt"
	"golang.org/x/crypto/bcrypt"
)

var secret []byte = []byte("secret")

func Register(c *fiber.Ctx) error {
	var data map[string]string
	if err := c.BodyParser(&data); err != nil {
		return err
	}
	var userModel models.User
	result := database.DB.Where("email=?", data["email"]).First(&userModel).Error
	if result != nil {

	}
	password, err := bcrypt.GenerateFromPassword([]byte(data["password"]), 14)
	if err != nil {
		c.Status(fiber.StatusInternalServerError)
		return c.JSON(fiber.Map{
			"message": "error while converting password to hash",
		})
	}

	user := models.User{
		UserName:    data["user_name"],
		Password:    password,
		Role:        data["role"],
		Location:    data["location"],
		PhoneNumber: data["phone_number"],
		Email:       data["email"],
	}

	database.DB.Create(&user) //created the user and saved them in the database

	var anotherUser models.User

	database.DB.Where("email=?", data["email"]).First(&anotherUser) // retreiving the user again to update its jwt

	claims := &jwt.StandardClaims{
		Issuer: strconv.Itoa(int(anotherUser.ID)),
		// ExpiresAt: time.Now().Add(time.Hour * 24).Unix(),
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)

	ss, err := token.SignedString(secret)

	if err != nil {
		c.Status(fiber.StatusInternalServerError)
		return c.JSON(fiber.Map{
			"message": "Could not sign token during registration with secret",
		})
	}

	cookie := fiber.Cookie{
		Name:  "jwt",
		Value: ss,
		// Expires:  time.Now().Add(time.Hour * 24),
		HTTPOnly: true,
	}

	c.Cookie(&cookie) // prepared and sent a cookie to the newly registered user

	user.Jwt = ss
	database.DB.Save(&user)

	return c.JSON(fiber.Map{
		"message": "successfull",
	})
}
