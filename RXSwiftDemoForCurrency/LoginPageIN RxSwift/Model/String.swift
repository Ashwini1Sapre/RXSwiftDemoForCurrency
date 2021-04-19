//
//  String.swift
//  RXSwiftDemoForScroll
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import UIKit

extension String {
    
    func isValidEmail() -> Bool {
        let email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format: "Self matches %@", email)
        return emailPred.evaluate(with: self)
        
    }
    
    
    func isValidPassword() -> Bool {
        
        let password = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[d$@$!%*?&#])[A-Za-z\\dd$@$!%*?&#]{8,}"
        let passPred = NSPredicate(format: "self matches %@", password)
        return passPred.evaluate(with: self)
        
        
    }
    
    
}

