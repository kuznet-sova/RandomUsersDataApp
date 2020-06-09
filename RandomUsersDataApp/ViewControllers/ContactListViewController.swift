//
//  ContactListViewController.swift
//  RandomUsersDataApp
//
//  Created by Ирина Кузнецова on 08.06.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {

    var contact = ContactInfo.getContactsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return contact.count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let shortInfoCell = tableView.dequeueReusableCell(withIdentifier: "shortInfo", for: indexPath)
        
        shortInfoCell.textLabel?.text = contact[indexPath.row].fullName
        
        return shortInfoCell
    }
    
}
