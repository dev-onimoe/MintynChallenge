//
//  Observable.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/24/22.
//

import Foundation

final class Observable<T> {
    
    var value : T {
        didSet {
            listener?(value)
        }
    }
    private var listener : ((T) -> Void)?
    
    init (_ value : T) {
        self.value = value
    }
    
    func bind(completion : @escaping (T) -> Void) {
        
        completion(value)
        listener = completion
    }
}

