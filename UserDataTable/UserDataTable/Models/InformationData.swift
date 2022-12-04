//
//  InformationData.swift
//  UserDataTable
//
//  Created by dzmitry on 4.12.22.
//

import Foundation

// MARK: - Person

struct Person {
    static let name = ["Name1", "Name2", "Name3", "Name4", "Name5",
                       "Name6", "Name7", "Name8", "Name9", "Name10"].shuffled()
    static let surname = ["Surname1", "Surname2", "Surname3", "Surname4", "Surname5",
                          "Surname6", "Surname7", "Surname8", "Surname9", "Surname10"].shuffled()
    static let phone = ["+375447534229", "+375333756744", "+375294567844",
                                  "+375339567856", "+375445671020", "+375440956744",
                                  "+375294560909", "+375442345289", "+375331238756",
                                  "+375291223443"].shuffled()
    static let email = ["email@1.com", "email@2.com", "email@3.com",
                        "email@4.com", "email@5.com", "email@6.com", "email@7.com",
                        "email@8.com", "email@9.com", "email@10.com"].shuffled()
}
