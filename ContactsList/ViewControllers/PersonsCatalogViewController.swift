//
//  PersonCatalogViewController.swift
//  ContactsList
//
//  Created by Alexander Grishin on 18.10.2022.
//

import UIKit

class PersonsCatalogViewController: UITableViewController {
    
    var personsCatalog: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsCatalog.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsCatalog[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catalog", for: indexPath)
        let person = personsCatalog[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
}
