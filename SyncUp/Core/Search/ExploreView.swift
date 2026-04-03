//
//  ExploreView.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 15) {
                    ForEach(1 ..< 25) { user in
                        UserCell()
                            .padding(.horizontal )
                        
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
