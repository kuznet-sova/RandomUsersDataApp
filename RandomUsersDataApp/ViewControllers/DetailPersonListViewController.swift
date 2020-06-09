//
//  DetailContactListViewController.swift
//  RandomUsersDataApp
//
//  Created by Ирина Кузнецова on 09.06.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import UIKit

class DetailPersonListViewController: UITableViewController {

    var personDetail = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personDetail.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personDetail[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fullInfoCell = tableView.dequeueReusableCell(withIdentifier: "fullInfo", for: indexPath)
        
        if indexPath.row % 2 == 0 {
            fullInfoCell.textLabel?.text = personDetail[indexPath.row].phone
            fullInfoCell.imageView?.image = UIImage(systemName: "phone")
        } else {
            fullInfoCell.textLabel?.text = personDetail[indexPath.row].email
            fullInfoCell.imageView?.image = UIImage(systemName: "tray")
        }
        
        return fullInfoCell
    }
}
