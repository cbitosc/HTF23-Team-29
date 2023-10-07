package routes

import (
	"zeroHunger/controllers"

	"github.com/gofiber/fiber/v2"
)

func Setup(app *fiber.App) {
	app.Post("/register", controllers.Register)
	app.Get("/login", controllers.Login)
	// app.Get("/logout")

	// // delivery
	// delivery := app.Group("/delivery")
	// delivery.Get("/getRoutes")
	// delivery.Post("/setPath")
	// delivery.Post("/setStatus")

	// // donor
	// donor := app.Group("/donor")
	// donor.Post("/addItem")
	// donor.Get("/prevItems")
	// donor.Get("/analytics")

	// // volunteer
	// volunteer := app.Group("/volunteer")
	// volunteer.Post("/setDropInLocation")
	// volunteer.Get("/getStatus")
}
