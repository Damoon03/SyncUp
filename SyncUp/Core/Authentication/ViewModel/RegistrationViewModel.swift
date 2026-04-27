//
//  RegistrationViewModel.swift
//  SyncUp
//
//  Created by Damoon saber on 2/7/1405 AP.
//

import Foundation
internal import Combine

class RegistrationViewModel: ObservableObject {
    
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
 
    func createUser(
        withemail email: String,
        password: String,
        userName: String,
        fullName: String
    ) async {
        do {
            try await authService
                .createUser(
                    withEmail: email,
                    password: password,
                    userName: userName,
                    fullName: fullName
                )
        } catch {
            print(
                "DEBUG: failed to log in with error \(error.localizedDescription)"
            )
        }
    }
}
