//
//  NotificationCell.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundStyle(Color(.systemGray4))
            HStack {
                Text("Elliot Alderson")
                    .font(.footnote)
                    .fontWeight(.semibold) +
              
                Text(" liked one of your posts. ")
                    .font(.footnote) +
               
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
           
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48) 
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
