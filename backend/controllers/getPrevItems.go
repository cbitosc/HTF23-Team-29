package controllers

import "github.com/gofiber/fiber/v2"

func PrevItems(c *fiber.Ctx) error {

	return c.JSON(fiber.Map{
		"message": "success",
	})
}
