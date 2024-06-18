//
//  User.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import Foundation


struct User: Codable{
    let id : String
    let name : String
    let email : String
    let joined : TimeInterval
}
