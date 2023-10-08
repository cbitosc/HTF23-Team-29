### Register api
route: /register
method: post
requried body: user := models.User{
		UserName:    data["user_name"],
		Password:    password,
		Role:        data["role"],
		PhoneNumber: data["phone_number"],
		Email:       data["email"],
		Location:    data["location"],
		Jwt:         data["jwt"],
	}

### Login api
route: /login
method: get
required body: user: models.User{
    Email: data["email"],
    Password: data["password"]
}

### Get user information
route: /getUserInfo
method: get
required bodu: user: models.User{
    Email:data['email']
}