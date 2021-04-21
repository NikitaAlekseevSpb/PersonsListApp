//
//  DetailInfoViewController.swift
//  PersonsListApp
//
//  Created by MacBook on 21.04.2021.
//

import UIKit

class DetailInfoViewController: UIViewController {

    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        navigationItem.largeTitleDisplayMode = .never
        
        phoneLable.text = "phone: \(person.number)"
        emailLabel.text = "email: \(person.email)"
    }
    

    /*
    // MARK: - Navigation

    
     
    */

}
