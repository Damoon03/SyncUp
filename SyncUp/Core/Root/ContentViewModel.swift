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
    init() {
        
    }
}
