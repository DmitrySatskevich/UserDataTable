//
//  UserDataVC.swift
//  UserDataTable
//
//  Created by dzmitry on 4.12.22.
//

import UIKit

class UserDataVC: UIViewController {
    
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.name + " " + person.sureName
        emailLbl.text = person.email
        phoneLbl.text = person.phoneNumber
    }
}
