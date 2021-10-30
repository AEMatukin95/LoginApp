//
//  User.swift
//  LoginApp
//
//  Created by Александр Матукин on 30.10.2021.
//

struct User {
    let userName: String
    let userPassword: String
    let person: Person
    
    static func myPerson() -> User {
        User(
            userName: "User",
            userPassword: "password",
            person: Person(
                fullName: "Aleksandr Matukin",
                email: "san9.matukin2011@yandex.ru",
                myWork: "I work at Lukoil",
                city: "Volgograd",
                family: "This is my family. My wife's name is Julia. She is 26 years old.",
                pet: "This is my pets. The cat's name is Baron🐱. The dog's name is Molly🐶.",
                work: "My wife and I work in company - LUKOIL. Our plant is engaged in oil refining."
            )
        )
    }
}

struct Person {
    let fullName: String
    let email: String
    let myWork: String
    let city: String
    let family: String
    let pet: String
    let work: String
}
