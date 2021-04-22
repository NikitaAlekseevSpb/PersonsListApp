//
//  Person.swift
//  PersonsListApp
//
//  Created by MacBook on 20.04.2021.
//


struct Person {
    let name: String
    let sureName: String
    let email: String
    let number: String
    
    var fullName: String {
        "\(name) \(sureName)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
     
     var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                sureName: surnames[index],
                email: emails[index],
                number: phones[index]
            )
            
            persons.append(person)
     }
     return persons
    }
}


class DataManager {
    
    static let shared = DataManager()
    
    let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    let emails = ["01234", "12345", "23456", "34567", "45678"]
    let phones = ["@person0", "@person1", "@person2", "@person3", "@person4"]
    
    
    private init() {}
}



