//
//  UserCell.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray4))
            VStack(alignment: .leading) {
                Text("Test_Username")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Test Name")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
