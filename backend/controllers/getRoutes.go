package controllers

import (
	"zeroHunger/database"

	"github.com/gofiber/fiber/v2"
)

func GetRoutes(c *fiber.Ctx) error {
	database.DB.Where()

	return c.JSON(fiber.Map{
		"message": "success",
	})
}
