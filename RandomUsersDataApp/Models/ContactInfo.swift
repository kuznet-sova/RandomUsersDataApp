//
//  ContactInfo.swift
//  RandomUsersDataApp
//
//  Created by Ирина Кузнецова on 09.06.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

struct ContactInfo {
    let name: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
}

extension ContactInfo {
    static func getContactsList() -> [ContactInfo] {
        
        var contactsList = [ContactInfo]()
        
        for _ in 0 ..< ContactsDatabase().nameBase.count {
            contactsList.append (
                ContactInfo (
                    name: ContactsDatabase().nameBase.randomElement()!,
                    secondName: ContactsDatabase().secondNameBase.randomElement()!,
                    phone: ContactsDatabase().phoneBase.randomElement()!,
                    email: ContactsDatabase().emailBase.randomElement()!)
            )
        }
        
        return contactsList
    }
}
