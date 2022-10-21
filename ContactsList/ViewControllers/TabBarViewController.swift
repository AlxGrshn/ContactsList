//
//  TabBarViewController.swift
//  ContactsList
//
//  Created by Alexander Grishin on 21.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let personsCatalogVC = viewControllers?.last as? PersonsCatalogViewController else { return }
        
        let persons = Person.getPersonList()
        personListVC.personsList = persons
        personsCatalogVC.personsList = persons
    }

}
