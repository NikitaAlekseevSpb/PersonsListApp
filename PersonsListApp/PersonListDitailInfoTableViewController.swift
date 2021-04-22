//
//  PersonListDitailInfoTableViewController.swift
//  PersonsListApp
//
//  Created by MacBook on 21.04.2021.
//

import UIKit

class PersonListDitailInfoTableViewController: UITableViewController {

    var persons: [Person] = []

   // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nemberAndEmail", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = "phone: \(person.number)"
        default:
            content.text = "email: \(person.email)"
        }
        
        cell.contentConfiguration = content
        
        return cell
    }

}
