package models

import "gorm.io/gorm"

type DonorItem struct {
	gorm.Model
	ID            uint   `json:"id" gorm:"unique"`
	ItemName      string `json:"item_name"`
	Quantity      string `json:"quantity"`
	Category      string `json:"category"`
	Pickup_Before string `json:"pickup_before"`
	Status        string `json:"status"`
	UserEmail     string `json:"email"`
	UserID        int
	User          User
}
