//
//  ContentViewModel.swift
//  SyncUp
//
//  Created by Damoon saber on 2/8/1405 AP.
//

import Foundation
import FirebaseAuth
internal import Combine

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    private let authService: AuthService
    private var cancelables = Set<AnyCancellable>()
    
    init(authservice: AuthService) {
        self.authService = authservice
        
        setupSubscibers()
        authservice.updateUserSession()
    }
    private func setupSubscibers() {
        authService.$userSession.sink { [weak self] user in
            self?.userSession = user
        }.store(in: &cancelables)
    }
}
