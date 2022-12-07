//
//  Person.swift
//  UserDataTable
//
//  Created by dzmitry on 7.12.22.
//

import Foundation

struct Person {
    let name: String
    let sureName: String
    let email: String
    let phoneNumber: String
}

// MARK: - PersonData

struct PersonData {
    
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []

        // перемешиваем и записываем
        let names = DataStorage.names.shuffled()
        let surnames = DataStorage.surnames.shuffled()
        let emails = DataStorage.emails.shuffled()
        let phones = DataStorage.phones.shuffled()

        for index in 0 ..< names.count {
            let person = Person(name: names[safe: index] ?? "",
                                sureName: surnames[safe: index] ?? "",
                                email: emails[safe: index] ?? "",
                                phoneNumber: phones[safe: index] ?? "")
            persons.append(person)
        }
        return persons
    }
}

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
