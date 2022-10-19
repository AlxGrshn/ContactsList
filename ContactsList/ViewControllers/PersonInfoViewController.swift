//
//  PersonInfoViewController.swift
//  ContactsList
//
//  Created by Alexander Grishin on 18.10.2022.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = person.fullName
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
