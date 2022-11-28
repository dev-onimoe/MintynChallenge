//
//  Service.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/24/22.
//

import Foundation

class Service {
    
    let authUser = ["phone" : "+2348067250421", "password" : "mintynChallenge@"]
    
    static let shared = Service()
    
    func aunthenticate(phone: String, pass: String, completion:  @escaping (Response) -> Void) {
        
        if phone == authUser["phone"] && pass == authUser["password"] {
            
           completion(Response(check: true, description: "Success"))
        }else {
            completion(Response(check: false, description: "Invalid login details"))
        }
    }
}

struct Response {
    
    var check : Bool
    var description : String

}
