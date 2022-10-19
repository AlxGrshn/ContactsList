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
        var personsList: [Person] = []
        
        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let phones = data.phoneNumbers.shuffled()
        let emails = data.emails.shuffled()
        
        for item in 0..<names.count {
            let person = Person(
                name: names[item],
                surname: surnames[item],
                phoneNumber: phones[item],
                email: emails[item]
            )
            personsList.append(person)
        }
        return personsList
    }
}
