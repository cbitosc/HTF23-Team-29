package controllers

import (
	"zeroHunger/database"
	"zeroHunger/models"

	"github.com/gofiber/fiber/v2"
	"golang.org/x/crypto/bcrypt"
)

func Login(c *fiber.Ctx) error {
	var data map[string]string
	if err := c.BodyParser(&data); err != nil {
		return err
	}

	var user models.User
	err := database.DB.Where("email=?", data["email"]).First(&user).Error
	if err != nil {
		return c.JSON(fiber.Map{
			"message": "User not found",
		})
	}

	database.DB.Where("email=?", data["email"]).First(&user)

	if err := bcrypt.CompareHashAndPassword(user.Password, []byte(data["password"])); err != nil {
		c.Status(fiber.StatusBadRequest)
		return c.JSON(fiber.Map{
			"message": "Incorrect Password",
		})
	}

	return c.JSON(fiber.Map{
		"message": user.Jwt,
	})
}
