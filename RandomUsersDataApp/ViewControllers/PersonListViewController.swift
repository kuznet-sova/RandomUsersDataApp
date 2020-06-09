//
//  ContactListViewController.swift
//  RandomUsersDataApp
//
//  Created by Ирина Кузнецова on 08.06.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {

    var person = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let shortInfoCell = tableView.dequeueReusableCell(withIdentifier: "shortInfo", for: indexPath)
        shortInfoCell.textLabel?.text = person[indexPath.row].fullName
        
        return shortInfoCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow
            else { return }
        guard let detailInfoView = segue.destination as? DetailInfoViewController
            else { return }
        detailInfoView.person = person[indexPath.row]
    }
}
