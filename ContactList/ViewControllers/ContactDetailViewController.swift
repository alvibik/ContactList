//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by albik on 05.11.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "E-Mail: \(person.email)"
    }
}
