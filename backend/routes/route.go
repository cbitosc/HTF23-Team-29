package routes

import (
	"zeroHunger/controllers"

	"github.com/gofiber/fiber/v2"
)

func Setup(app *fiber.App) {
	app.Post("/register", controllers.Register)
	app.Get("/login", controllers.Login)
	app.Get("/logout", controllers.Logout)
	app.Get("/getUserInfo", controllers.UserInfo)

	// delivery
	delivery := app.Group("/delivery")
	delivery.Get("/getRoutes", controllers.GetRoutes)
	// delivery.Post("/setPath")
	// delivery.Post("/setStatus")

	// donor
	donor := app.Group("/donor")
	donor.Post("/addItem", controllers.AddItems)
	donor.Get("/getItems", controllers.GetItems)

	// // volunteer
	// volunteer := app.Group("/volunteer")
	// volunteer.Post("/setDropInLocation")
	// volunteer.Get("/getStatus")
}
