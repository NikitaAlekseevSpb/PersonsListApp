//
//  TabBarViewController.swift
//  PersonsListApp
//
//  Created by MacBook on 21.04.2021.
//

import UIKit


class TabBarViewController: UITabBarController {

    private var persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        transfer(data: persons)
    }
    
   private func transfer(data: [Person]){
     
    guard let viewControllerCount = viewControllers else {return}
    for view in viewControllerCount {
        if let personalListVC = view as? PersonListTableViewController {
            personalListVC.persons = data
        } else if let personListDetailVC = view as? PersonListDitailInfoTableViewController{
            personListDetailVC.persons = data
        }
            
        }
    }
}
