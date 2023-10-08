package models

type Route struct {
	ID           int    `gorm:"unique"`
	ItemName     string `json:"item_name"`
	Category     string `json:"category"`
	Quantity     string `json:"quantity"`
	FromLocation string `json:"fromLocation"`
	ToLocation   string `json:"toLocation"`
}
