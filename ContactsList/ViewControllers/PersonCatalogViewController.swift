//
//  PersonCatalogViewController.swift
//  ContactsList
//
//  Created by Alexander Grishin on 18.10.2022.
//

import UIKit

class PersonCatalogViewController: UITableViewController {
   
    var personsCatalog: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let personCatalogVC = tabBarController?.viewControllers?.first as? PersonCatalogViewController else { return }
            personsCatalog = personCatalogVC.personsCatalog
    }

    //MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsCatalog.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        personCatalog[selection].title
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catalog", for: indexPath)
        let person = personsCatalog[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.phoneNumber
        content.secondaryText = person.email
        
        cell.contentConfiguration = content
        return cell
    }

}

