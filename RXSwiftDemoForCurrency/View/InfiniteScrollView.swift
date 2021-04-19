//
//  InfiniteScrollView.swift
//  RXSwiftDemoForCurrency
//
//  Created by Knoxpo MacBook Pro on 19/04/21.
//

import Foundation
import SwiftUI
struct  InfiniteScrollView: View {
    @ObservedObject var myList = ObservableArray<Data>(array: [Data(value: "Infinite scroll", id: 0)])
    
    let viewModel = InfiniteScrollViewModel()
    
    
    init() {
        self.viewModel.viewUpdate = self
    }
    
    
    var body: some View {
        List(self.myList.array.enumerated().map({ $0 }), id: \.1.self.id) {(index,listItem) in
            
            Text(listItem.value).onAppear(perform : {
                let count = self.myList.array.count
                
                if index == count - 1 {
                    
                    self.viewModel.getNewItems(currentListSize: count)
                }
              
            })
            
        
        }
        
     
    }
  
}

extension InfiniteScrollView: viewUpdateProtocol {
   
    func apendData(list: [Data]?) {
        self.myList.array.append(contentsOf: list!)
    }
  
}


protocol  viewUpdateProtocol {
    func apendData(list: [Data]?)
}
