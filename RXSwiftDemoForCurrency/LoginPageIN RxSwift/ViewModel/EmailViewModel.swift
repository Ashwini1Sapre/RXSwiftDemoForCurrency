//
//  EmailViewModel.swift
//  RXSwiftDemoForScroll
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation
import RxSwift

class EmailViewModel: ValidationViewModel {
    
    var errorMessage: String = "Plsee enter valid Email"
    var data: Variable<String> = Variable("")
    var errorValue: Variable<String?> = Variable("")
    
    
    func validateCredientail() -> Bool {
        
        guard validatePattern(text: data.value) else {
            errorValue.value = errorMessage
            return false
        }
        errorValue.value = ""
        return true
        
        
    }
    
    func validatePattern(text : String) -> Bool {
        
        let emailRegEx = "[A-Z0-1a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "Self match %@", emailRegEx)
        return emailTest.evaluate(with: text)
        
        
    }
    
    
    
    
    
}
