package models

type User struct {
	ID          uint   `json:"id" gorm:"unique"`
	UserName    string `json:"user_name"`
	Password    []byte `json:"password"`
	Jwt         string `json:"jwt"`
	Role        string `json:"role"`
	PhoneNumber uint   `json:"phone_number"`
	Email       string `json:"email"`
	Location    string `json:"location"`
}
