package controllers

import (
	"zeroHunger/database"
	"zeroHunger/models"

	"github.com/gofiber/fiber/v2"
)

func GetItems(c *fiber.Ctx) error {
	var data map[string]string
	if err := c.BodyParser(&data); err != nil {
		return err
	}
	var items []models.DonorItem
	database.DB.Where("email=?", data["email"]).Find(&items)
	return c.JSON(&items)
}
