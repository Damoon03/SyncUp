//
//  UserStatsView.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct UserStatsView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .padding()
    }
}

#Preview {
    UserStatsView(value: 5, title: "followers")
}
