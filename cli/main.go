package main

import (
	"encoding/json"
	"fmt"
)

func main() {
	response := Response{ErrorCode: 0}

	userA := User{"Alex2", 12}
	response.Users = append(response.Users, userA)
	userB := User{"Stefan", 15}
	response.Users = append(response.Users, userB)

	js, err := json.MarshalIndent(response, "", "  ")
	if err != nil {
		// TODO: if error marshal response with errror only, empty users
		return
	}
	fmt.Println(string(js))
}
