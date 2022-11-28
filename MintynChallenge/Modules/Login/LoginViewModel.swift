//
//  LoginViewModel.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/24/22.
//

import Foundation

class LoginViewModel {
    
    var signinDone : Observable<Response?> = Observable(nil)
    
    func Login(phone: String, password : String) {
        
        Service.shared.aunthenticate(phone: phone, pass: password, completion: {[weak self] res in
            
            self?.signinDone.value = res
        })
        
    }
}
