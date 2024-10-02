//
//  Place_leg.swift
//  keepFresh
//
//  Created by haifa on 30/09/2024.
//

import SwiftUI

struct legPlaceView: View {
    var body: some View {
        ZStack {
            Image("leg_time")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                Text("Where to store hummus?")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                Image("hummus")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .frame(width: 150, height: 200)
                Button(action: {
                    // Action for milk button
                }) {
                    Text("Refrigerator")
                        .frame(width: 200, height: 50)
                        .background(Color("brownBtn"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    // Action for meat button
                }) {
                    Text("Pantry")
                        .frame(width: 200, height: 50)
                        .background(Color("brownBtn"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    // Action for bread button
                }) {
                    Text("Countertop")
                        .frame(width: 200, height: 50)
                        .background(Color("brownBtn"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding() // Add some padding around the VStack
        }
    }
}

struct legPlaceView_Preview: PreviewProvider {
    static var previews: some View {
        legPlaceView()
            .previewDevice("iPhone 15 Pro")
    }
}


