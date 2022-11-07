//
//  Persons.swift
//  ContactList
//
//  Created by albik on 05.11.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> [Person] {
        var persons : [Person] = []

        let firstNames = DataStore().firstNames.shuffled()
        let lastNames = DataStore().lastNames.shuffled()
        let emails = DataStore().emails.shuffled()
        let phones = DataStore().phones.shuffled()

        for i in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[i],
                lastName: lastNames[i],
                email: emails[i],
                phone: phones[i]
            )
            persons.append(person)
        }
        return persons
    }
}
