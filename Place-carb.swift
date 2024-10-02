//
//  Time-carb.swift
//  keepFresh
//
//  Created by haifa on 30/09/2024.
//

import SwiftUI

struct CarbTimeView: View {
    var body: some View {
        ZStack {
            Image("carb_time")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                Button(action: {
                    // Action for milk button
                }) {
                    Text("milk")
                        .frame(width: 200, height: 50)
                        .background(Color("brownBtm"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    // Action for meat button
                }) {
                    Text("meat")
                        .frame(width: 200, height: 50)
                        .background(Color("brownBtm"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    // Action for bread button
                }) {
                    Text("bread")
                        .frame(width: 200, height: 50)
                        .background(Color("brownBtm"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding() // Add some padding around the VStack
        }
    }
}

struct CarbTimeView_Preview: PreviewProvider {
    static var previews: some View {
        CarbTimeView()
            .previewDevice("iPhone 15 Pro")
    }
}
