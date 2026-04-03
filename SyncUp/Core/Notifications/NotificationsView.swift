//
//  NotificationsView.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12){
                    ForEach(0 ..< 10) { Notification in
                        NotificationCell()
                             .padding(.top)
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    NotificationsView()
}
