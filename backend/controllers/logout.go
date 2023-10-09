package controllers

import (
	"time"
	"zeroHunger/database"
	"zeroHunger/models"

	"github.com/gofiber/fiber/v2"
	"github.com/golang-jwt/jwt"
)

func Logout(c *fiber.Ctx) error {
	var user models.User
	userCookie := c.Cookies("jwt")
	token, err := jwt.ParseWithClaims(userCookie, &jwt.StandardClaims{}, func(token *jwt.Token) (interface{}, error) {
		return []byte("secret"), nil
	})
	if err != nil {
		c.Status(fiber.StatusInternalServerError)
		return c.JSON(fiber.Map{
			"message": "No user",
		})
	}
	claims := token.Claims.(*jwt.StandardClaims)
	database.DB.Where("id=?", claims.Issuer).First(&user)
	user.Jwt = ""
	database.DB.Save(&user)

	cookie := fiber.Cookie{
		Name:     "jwt",
		Value:    "",
		HTTPOnly: true,
		Expires:  time.Now().Add(time.Hour * 24),
	}
	c.Cookie(&cookie)
	return c.JSON(fiber.Map{
		"message": "successfull",
	})
}
