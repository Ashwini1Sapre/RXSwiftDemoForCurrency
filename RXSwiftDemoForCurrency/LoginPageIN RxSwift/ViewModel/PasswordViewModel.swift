//
//  PasswordViewModel.swift
//  RXSwiftDemoForScroll
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation
import RxSwift

class PasswordViewModel: ValidationViewModel {
    func validateCredientail() -> Bool {
        guard validateLenght(text: data.value, size: (6,15)) else {
        errorValue.value = errorMessage
        return false;
        }
        
            errorValue.value = ""
        return true
    }
    

    var errorMessage: String = "Plese enter valid password"
    
    var data: Variable<String>  = Variable("")
    var errorValue: Variable<String?> = Variable("")
    
    
    func validateLenght(text : String, size : (min: Int, max: Int)) -> Bool {
    
    return (size.min...size.max).contains(text.count)
    }
    
    
    
}
