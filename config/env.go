package config

import (
	"log"
	"os"

	"github.com/joho/godotenv"
)

func initiliazeConfig() {
	err := godotenv.Load()

	if err != nil {
		log.Fatal("Error loading .env file")
	}
}

func GetEnv(name string) string {
	return os.Getenv(name)
}
