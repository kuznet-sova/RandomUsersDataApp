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

var contactsList = [Person]()

extension Person {
    static func getPersonsList() -> [Person] {
        
        if contactsList.count != 0 {
            return contactsList
        }
        
        let shuffledName = DataManager().nameBase.shuffled()
        let shuffledSecondName = DataManager().secondNameBase.shuffled()
        let shuffledPhone = DataManager().phoneBase.shuffled()
        let shuffledEmail = DataManager().emailBase.shuffled()
        
        for index in 0 ..< DataManager().nameBase.count {
            contactsList.append (
                Person (
                    name: shuffledName[index],
                    secondName: shuffledSecondName[index],
                    phone: shuffledPhone[index],
                    email: shuffledEmail[index])
            )
        }
        
        return contactsList
    }
}
