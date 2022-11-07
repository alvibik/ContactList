//
//  ContactTableTableViewController.swift
//  ContactList
//
//  Created by albik on 05.11.2022.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var persons = Person.getPerson()
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "detailContact" { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let ContactDetailVC = segue.destination as! ContactDetailViewController
            ContactDetailVC.person = persons[indexPath.row]
        }
    }
    
}
