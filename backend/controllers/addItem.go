package controllers

import (
	"zeroHunger/database"
	"zeroHunger/models"

	"github.com/gofiber/fiber/v2"
)

func AddItems(c *fiber.Ctx) error {
	var data map[string]string
	if err := c.BodyParser(&data); err != nil {
		return err
	}

	item := models.DonorItem{
		ItemName:      data["item_name"],
		Quantity:      data["quantity"],
		Category:      data["category"],
		Pickup_Before: data["pickup_before"],
	}

	database.DB.Create(&item)

	return c.JSON(fiber.Map{
		"message": "success",
	})
}
