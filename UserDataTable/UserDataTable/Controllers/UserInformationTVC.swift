//
//  UserInformationTVC.swift
//  UserDataTable
//
//  Created by dzmitry on 4.12.22.
//

import UIKit

class UserInformationTVC: UITableViewController {
    
    let persons = PersonData.createPersons().sorted { a, b -> Bool in a.name < b.name }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let person = persons[section]

        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = person.name + " " + person.sureName
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)

        return label
    }
    
      // Использование метода для кастомизации секции с использованием кастомного класса
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let SectionNameTVC = tableView.dequeueReusableCell(withIdentifier: "SectionNameTVC") as! SectionNameTVC
//        let person = persons[section]
//        SectionNameTVC.personLabel.text = person.name + " " + person.sureName
//
//        return SectionNameTVC
//    }

//    // Использование метода для кастомизации секции без использования кастомного класса
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let person = persons[section]
//
//        let myView = UIView()
//        myView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
//
//        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
//        label.text = person.name + " " + person.sureName
//        label.textColor = .white
//
//        myView.addSubview(label)
//        return myView
//    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        print(indexPath)
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber
        return cell
    }
}
