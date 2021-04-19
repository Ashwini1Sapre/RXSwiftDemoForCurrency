//
//  InfiniteScrollRepository.swift
//  RXSwiftDemoForCurrency
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation
import RxSwift


protocol InfiniteScrollRepoProtocol {
    
    
    func getDataArray() -> BehaviorSubject<[Data]>
    func fetchListItems(currentListSize: Int)
    
}

class InfiniteScrollRepository : InfiniteScrollRepoProtocol {
    
    private let listObservable = BehaviorSubject<[Data]>(value: [])
    
    
    
    func getDataArray() -> BehaviorSubject<[Data]> {
      return listObservable
    }
    

    func fetchListItems(currentListSize: Int) {
        var dummyList : [Data] = []
        let limit = 20
        
        let page = currentListSize/limit + 1
        
        for index in 1...limit {
            dummyList.append(Data(value: "Page\(page) -> Item\(index)", id: index + currentListSize))
        }
        listObservable.onNext(dummyList)
    }
    
   
    
    
    
    
    
    
    
}
