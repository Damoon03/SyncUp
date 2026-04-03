//
//  FeedCell.swift
//  SyncUp
//
//  Created by Damoon saber on 1/12/1405 AP.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack {
            Rectangle()
                    .fill(.purple )
                    .containerRelativeFrame([.horizontal, .vertical])
                    .overlay {
                        Text("post \(post)")
                            .foregroundStyle(.white)
                    }
                
            VStack {
                Spacer()
                 
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("damoon.saber")
                            .fontWeight(.semibold)
                        
                        Text("best rock songs of all time")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                     
                    Spacer()
                       
                    VStack(spacing: 28 ) {
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray )
                        
                        Button {
                             
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("12k")
                                    .font(.footnote)
                                    .bold()
                            }
                            
                        }
                        
                        Button {
                            
                        } label: {
                            VStack{ Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("128")
                                    .font(.footnote)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28  )
                                .foregroundStyle(.white)

                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)

                        }
                    }

                }
                .padding(.bottom, 80)
            }
            . padding()
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
