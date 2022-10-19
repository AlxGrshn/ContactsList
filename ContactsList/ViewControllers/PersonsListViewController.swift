//
//  PersonsListViewController.swift
//  ContactsList
//
//  Created by Alexander Grishin on 18.10.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    let personsList = Person.getPerson()
    
    //MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
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
    
    
// Я не понял, как корректно передать данные на вторую вкладку, если использовать этот сегвей, то все крашится из-за nil

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarVC = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarVC.viewControllers else { return }
//        guard let indexPath = tableView.indexPathForSelectedRow else { return }
//
//        viewControllers.forEach {
//            if let personInfoVC = $0 as? PersonInfoViewController {
//                personInfoVC.person = personsList[indexPath.row]
//            } else if let personsCatalogVC = $0 as? PersonsCatalogViewController {
//                personsCatalogVC.personsCatalog = personsList
//            }
//        }
//    }
}
