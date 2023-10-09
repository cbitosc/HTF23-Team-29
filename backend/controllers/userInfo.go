package controllers

import (
	"zeroHunger/database"
	"zeroHunger/models"

	"github.com/gofiber/fiber/v2"
)

func UserInfo(c *fiber.Ctx) error {
	var data map[string]string
	if err := c.BodyParser(&data); err != nil {
		return err
	}
	var user models.User
	database.DB.Where("email=?", data["email"]).First(&user)
	return c.JSON(&user)
}
