package routes

import (
	"zeroHunger/controllers"

	"github.com/gofiber/fiber/v2"
)

func Setup(app *fiber.App) {
	app.Get("/register", controllers.Register)
}
