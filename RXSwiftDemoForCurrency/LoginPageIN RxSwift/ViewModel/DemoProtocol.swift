//
//  DemoProtocol.swift
//  RXSwiftDemoForScroll
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation
import RxSwift
import RxCocoa

protocol ValidationViewModel {
    var errorMessage: String { get }
    
    
    
    var data: Variable<String> { get set }
    var errorValue: Variable<String?> { get }
    func validateCredientail() -> Bool
    

    
}
