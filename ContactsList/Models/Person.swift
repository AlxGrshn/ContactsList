//
//  Person.swift
//  ContactsList
//
//  Created by Alexander Grishin on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        let data = DataStore()
        
        return [
            Person(
            name: data.names.randomElement() ?? "",
            surname: data.surnames.randomElement() ?? "",
            phoneNumber: data.phoneNumbers.randomElement() ?? "",
            email: data.emails.randomElement() ?? ""
        ),
            Person(
            name: data.names.randomElement() ?? "",
            surname: data.surnames.randomElement() ?? "",
            phoneNumber: data.phoneNumbers.randomElement() ?? "",
            email: data.emails.randomElement() ?? ""
        ),
            Person(
            name: data.names.randomElement() ?? "",
            surname: data.surnames.randomElement() ?? "",
            phoneNumber: data.phoneNumbers.randomElement() ?? "",
            email: data.emails.randomElement() ?? ""
        )
            
        ]
    }
}
