// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Response
struct Response: Codable {
	let errorCode: Int
	let error: String
	let users: [User]
	
	enum CodingKeys: String, CodingKey {
		case errorCode = "ErrorCode"
		case error = "Error"
		case users = "Users"
	}
}

// MARK: - User
struct User: Codable {
	let name: String
	let age: Int
	
	enum CodingKeys: String, CodingKey {
		case name = "Name"
		case age = "Age"
	}
}
