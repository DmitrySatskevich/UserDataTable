//
//  UsersTVC.swift
//  UserDataTable
//
//  Created by dzmitry on 4.12.22.
//

import UIKit

class UsersTVC: UITableViewController {
    
    let persons = PersonData.createPersons().sorted { a, b -> Bool in
        a.sureName < b.sureName
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.sureName
        cell.detailTextLabel?.text = person.name
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "Detail" {
            return
        }

        if let indexPath = tableView.indexPathForSelectedRow,
           let detailVC = segue.destination as? UserDataVC
        {
            detailVC.person = persons[indexPath.row]
        }
    }
}
