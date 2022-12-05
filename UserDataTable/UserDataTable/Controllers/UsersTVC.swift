//
//  UsersTVC.swift
//  UserDataTable
//
//  Created by dzmitry on 4.12.22.
//

import UIKit

class UsersTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Список контактов"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Person.name.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let name = Person.name[indexPath.row]
        let surname = Person.surname[indexPath.row]
        cell.textLabel?.text = name + " " + surname
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let destVC = segue.destination as? UserDataVC {
            destVC.name = Person.name[indexPath.row]
            destVC.surname = Person.surname[indexPath.row]
            destVC.phone = Person.phone[indexPath.row]
            destVC.email = Person.email[indexPath.row]
        }
    }
}
