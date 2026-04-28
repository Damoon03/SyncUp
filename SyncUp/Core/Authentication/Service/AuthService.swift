//
//  AuthService.swift
//  SyncUp
//
//  Created by Damoon saber on 2/5/1405 AP.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(
        withEmail email: String,
        password: String,
        userName: String,
        fullName: String) async throws {
           
            do {
                let result = try await Auth.auth().createUser(withEmail: email, password: password)
                print("DEBUG: user is \(result.user.uid)")
            } catch {
                print("DEBUG: failed to create user with error: \(error.localizedDescription)")
                throw error
            }
        }
    
    func signout() {
        
    }
}
