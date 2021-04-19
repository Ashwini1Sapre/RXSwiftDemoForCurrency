//
//  NewViewModel.swift
//  RXSwiftDemoForCurrency
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation
import RxSwift

class InfiniteScrollViewModel {
    
    let infiniteScrollRepo : InfiniteScrollRepoProtocol
    var viewUpdate: viewUpdateProtocol? = nil
    let disposeBag = DisposeBag()
    
    init(inifiniteScrollRepo : InfiniteScrollRepoProtocol = InfiniteScrollRepository()) {
        self.infiniteScrollRepo = inifiniteScrollRepo
        self.infiniteScrollRepo.getDataArray().subscribe({[weak self] newList in
            
            self?.updateListItem(newList: newList.element)
            
        }).disposed(by: disposeBag)
    }
    
    func getNewItems(currentListSize: Int) {
        
        infiniteScrollRepo.fetchListItems(currentListSize: currentListSize)
    }
    
    func updateListItem(newList: [Data]?) {
        
        if newList != nil && !newList!.isEmpty {
            
         //   self.viewUpdate?.appendData(list: newList)
            self.viewUpdate?.apendData(list: newList)
        }
        
        
    }
    
    
    
    
}
