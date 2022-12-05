//
//  UserInformationTVC.swift
//  UserDataTable
//
//  Created by dzmitry on 4.12.22.
//

import UIKit

class UserInformationTVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Список контактов"
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Person.name.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        let name = Person.name[section]
        let surname = Person.surname[section]
        label.text = name + " " + surname
        
        return label
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let phone = Person.phone[indexPath.row]
        let email = Person.email[indexPath.row]
        cell.textLabel?.text = indexPath.row == 0 ? email : phone
        
        return cell
    }
}
