//
//  GenericClass.swift
//  RXSwiftDemoForCurrency
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation
import Combine

class ObservableArray<T>: ObservableObject {
    var cancellable = [AnyCancellable]()
    
    @Published var array:[T] = []
    
    init(array: [T]) {
        self.array = array
    }
    
    func observeChildrenChanges<T: ObservableObject>() -> ObservableArray<T> {
        
        let array2 = array as! [T]
        array2.forEach({
            let c = $0.objectWillChange.sink(receiveValue: { _ in self.objectWillChange.send()})
            
            self.cancellable.append(c)
            
            
        })
        
        return self as! ObservableArray<T>
        
        
        
        
    }
    
    
    
    
    
}
