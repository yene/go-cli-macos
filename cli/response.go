package main

type Response struct {
	ErrorCode int
	Error     string
	Users     []User
}

type User struct {
	Name string
	Age  int
}
