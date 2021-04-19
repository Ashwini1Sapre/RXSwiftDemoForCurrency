//
//  LoginModel.swift
//  RXSwiftDemoForScroll
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation


class LoginModel {
    
    var email = ""
    var password = ""
    var reenterPassword = ""
    convenience init(email : String, password : String, reenterPassword : String) {
                     
        self.init()
        self.email = email
        self.password = password
        self.reenterPassword = reenterPassword
   
  }
 
}
