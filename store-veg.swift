//
//  store-diary.swift
//  keepFresh
//
//  Created by حصه العجالين on 27/03/1446 AH.
//

import SwiftUI

struct VegetablesFruitsView: View {
    var body: some View {
        ZStack {
            // Background Image
            Image("veg") // Use the correct image name
                .resizable()
                .scaledToFill() // Fill the entire screen
                .edgesIgnoringSafeArea(.all) // Ignore safe area to cover the whole screen

            VStack {
                Text("Vegetables & Fruits")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 27.0)
                    .foregroundColor(.black) // Adjust text color for contrast

                Spacer()
         
                // Optional: You can add more content here

                Spacer()
            }
            .padding()
        }
    }
}

struct VegetablesFruitsView_Previews: PreviewProvider {
    static var previews: some View {
        VegetablesFruitsView()
            .previewDevice("iPhone 15 Pro") // Preview for iPhone 15 Pro
    }
}

