package database

import (
	"log"
	"os"
	"zeroHunger/models"

	"github.com/joho/godotenv"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

var DB *gorm.DB

func Connection() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Unable to load .env file")
	}
	dsn := os.Getenv("DATABASE_CONN_URL")
	conn, err := gorm.Open(postgres.New(postgres.Config{
		DSN: dsn,
	}), &gorm.Config{})
	if err != nil {
		panic("Unable to connect to db")
	}
	DB = conn
	DB.AutoMigrate(&models.User{})
}
