//
//  LoginViewModel.swift
//  SyncUp
//
//  Created by Damoon saber on 2/6/1405 AP.
//

import Foundation
internal import Combine

class LoginViewModel: ObservableObject {
        
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
 
    func login(withemail email: String, password: String) async {
        do {
            try await authService.login(withEmail: email, password: password)
        } catch {
            print("DEBUG: failed to log in with error \(error.localizedDescription)")
        }
    }
}
