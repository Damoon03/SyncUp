//
//  ContentView.swift
//  SyncUp
//
//  Created by Damoon saber on 1/10/1405 AP.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
        
        let vm = ContentViewModel(authservice: authService)
        self._viewModel = StateObject(wrappedValue: vm)
    }
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView(authService: authService)
            } else {
                LoginView(authService: authService)
            }
        }
    }
}

#Preview {
    ContentView(authService: AuthService())
}
