//
//  PersonsListViewController.swift
//  ContactsList
//
//  Created by Alexander Grishin on 18.10.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList: [Person] = []
    
    //MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personsList[indexPath.row]
        
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    //MARK: - navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personInfoVC.person = personsList[indexPath.row]
    }
}
