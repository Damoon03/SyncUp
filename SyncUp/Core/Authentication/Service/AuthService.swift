//
//  AuthService.swift
//  SyncUp
//
//  Created by Damoon saber on 2/5/1405 AP.
//

import Foundation
import Firebase
import FirebaseAuth
internal import Combine

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    func updateUserSession() {
        self.userSession = Auth.auth().currentUser
    }
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: user is \(result.user.uid)")
        } catch {
            print("DEBUG: failed to log in user with error: \(error.localizedDescription)")
            throw error
        }    }
    
    func createUser(
        withEmail email: String,
        password: String,
        userName: String,
        fullName: String) async throws {
           
            do {
                let result = try await Auth.auth().signIn(withEmail: email, password: password)
                 print("DEBUG: user is \(result.user.uid)")
            } catch {
                print("DEBUG: failed to create user with error: \(error.localizedDescription)")
                throw error
            }
        }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
