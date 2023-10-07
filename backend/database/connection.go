package database

import (
	"log"
	"os"

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
		DSN:                  dsn,
		PreferSimpleProtocol: true,
	}), &gorm.Config{})
	if err != nil {
		panic("Unable to connect to db")
	}
	DB = conn
}
