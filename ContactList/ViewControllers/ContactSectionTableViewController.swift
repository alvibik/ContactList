//
//  ContactSectionTableViewController.swift
//  ContactList
//
//  Created by albik on 07.11.2022.
//

import UIKit

final class ContactSectionTableViewController: UITableViewController {

    var persons = Person.getPerson()
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return "\(person.fullName)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phone
        return cell
    }
}
