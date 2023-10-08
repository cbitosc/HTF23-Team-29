package controllers

import (
	"zeroHunger/database"
	"zeroHunger/models"

	"github.com/gofiber/fiber/v2"
	"golang.org/x/crypto/bcrypt"
)

func Register(c *fiber.Ctx) error {
	var data map[string]string
	if err := c.BodyParser(&data); err != nil {
		return c.JSON(fiber.Map{
			"message": "Unable to parse through the json body",
		})
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
		PhoneNumber: data["phone_number"],
		Email:       data["email"],
		Location:    data["location"],
		Jwt:         data["jwt"],
	}

	database.DB.Create(&user)

	return c.JSON(fiber.Map{
		"message": "success",
	})
}
