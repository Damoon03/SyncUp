//
//  CurrentUserProfileView.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    // profile header
                    ProfileHeaderView()
                    
                    // post grid view
                    PostGridView()
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
