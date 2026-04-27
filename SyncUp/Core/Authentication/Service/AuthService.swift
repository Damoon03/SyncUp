//
//  AuthService.swift
//  SyncUp
//
//  Created by Damoon saber on 2/5/1405 AP.
//

import Foundation
import Firebase

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(
        withEmail email: String,
        password: String,
        userName: String,
        fullName: String
    ) async throws {
        print("DEBUG: user info \(email) \(userName) \(fullName)")
    }
    
    func signout() {
        
    }
}
