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
    
    var name: String!
    var surname: String!
    var phone: String!
    var email: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = name + " " + surname
        phoneLbl.text = "Phone:" + " " + phone
        emailLbl.text = "Email:" + " " + email
    }
}
