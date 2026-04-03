//
//  ProfileHeaderView.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing:8) {
                // profile Image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                
                // Username
                Text("@damoon.saber")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            //stats view
            HStack(spacing:16) {
                UserStatsView(value: 500, title: "following")
                UserStatsView(value: 320, title: "followers")
                UserStatsView(value: 10, title: "posts")
            }
            // action button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                
            }
            Divider()
        }
    }
}
#Preview {
    ProfileHeaderView()
}
