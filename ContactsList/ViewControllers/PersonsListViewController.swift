//
//  PersonsListViewController.swift
//  ContactsList
//
//  Created by Alexander Grishin on 18.10.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    //MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        personList.count
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let personInfoVC = segue.destination as? PersonInfoViewController
//        guard let indexPath = tableView.indexPathForSelectedRow else { return }
//        personInfoVC?.person = personList[indexPath.row]
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        viewControllers.forEach { viewController in
            if let personInfoVC = viewController as? PersonInfoViewController {
                personInfoVC.person = personList[indexPath.row]
            } else if let personCatalogVC = viewController as? PersonCatalogViewController {
                personCatalogVC.personCatalog = personList
            }
        }
    }
}
