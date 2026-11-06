//
//  User.swift
//  lab3
//
//  Created by stud on 06.11.2026.
//

import Foundation
class User{
    var name:String
    var age:Int
    var isStudent: Bool
    var city: String
    init(name:String, age:Int, isStudent: Bool, city: String){
        self.name=name
        self.age=age
        self.isStudent=isStudent
        self.city=city
    }
}
