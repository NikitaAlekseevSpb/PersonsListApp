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
     
   static func getPersons() -> [Person] {
    
    let employees = DataManager.getEmployees()
    var person: [Person] = []
    
    for _ in 1...employees.names.count {
        let employee = Person(
                            name: employees.names.randomElement() ?? "",
                            sureName: employees.surnames.randomElement() ?? "",
                            email: employees.emails.randomElement() ?? "",
                            number: employees.numbers.randomElement() ?? ""
                            )
        person.append(employee)
    }
    return person
   }
}


class DataManager {
    let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    let emails = ["01234", "12345", "23456", "34567", "45678"]
    let numbers = ["@person0", "@person1", "@person2", "@person3", "@person4"]
    
    static func getEmployees() -> DataManager {
        DataManager.init()
    }
}



