package models

type DonorItem struct {
	ID            uint   `json:"id" gorm:"unique"`
	ItemName      string `json:"item_name"`
	Quantity      string `json:"quantity"`
	Category      string `json:"category"`
	Pickup_Before string `json:"pickup_before"`
}
