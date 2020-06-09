//
//  ContactInfo.swift
//  RandomUsersDataApp
//
//  Created by Ирина Кузнецова on 09.06.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

struct Person {
    let name: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        var contactsList = [Person]()
        
        for _ in 0 ..< DataManager().nameBase.count {
            contactsList.append (
                Person (
                    name: DataManager().nameBase.randomElement()!,
                    secondName: DataManager().secondNameBase.randomElement()!,
                    phone: DataManager().phoneBase.randomElement()!,
                    email: DataManager().emailBase.randomElement()!)
            )
        }
        
        return contactsList
    }
}
