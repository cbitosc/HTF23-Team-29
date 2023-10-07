package models

type User struct {
	ID          uint   `json:"id" gorm:"unique"`
	UserName    string `json:"userName"`
	Password    []byte `json:"password"`
	Jwt         string `json:"jwt"`
	Role        string `json:"role"`
	PhoneNumber string `json:"phoneNumber"`
	Email       string `json:"email" gorm:"unique"`
	Location    string `json:"location"`
}
