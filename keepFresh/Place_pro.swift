//
//  Place_pro.swift
//  keepFresh
//
//  Created by haifa on 30/09/2024.
//

import SwiftUI

struct ProPlaceView: View {
    @State private var selectedAnswer: String?
    @State private var isCorrect: Bool? = nil

    var body: some View {
        ZStack {
            Image("pro_time")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 16) {
                Text("Where to store frozen fish?")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                
                Image("fish")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 200)

                // Button for Freezer (correct answer)
                Button(action: {
                    checkAnswer("Freezer")
                }) {
                    Text("Freezer")
                        .frame(width: 200, height: 50)
                        .background(Color("RedBtn"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())

                // Button for Pantry
                Button(action: {
                    checkAnswer("Pantry")
                }) {
                    Text("Pantry")
                        .frame(width: 200, height: 50)
                        .background(Color("RedBtn"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())

                // Button for Countertop
                Button(action: {
                    checkAnswer("Countertop")
                }) {
                    Text("Countertop")
                        .frame(width: 200, height: 50)
                        .background(Color("RedBtn"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())

                // Display result
                if let isCorrect = isCorrect {
                    Text(isCorrect ? "Correct!" : "Try Again!")
                        .font(.headline)
                        .foregroundColor(isCorrect ? .green : .red)
                        .padding()
                }
            }
            .padding() // Add some padding around the VStack
        }
    }

    // Function to check the answer
    private func checkAnswer(_ answer: String) {
        selectedAnswer = answer
        isCorrect = (answer == "Freezer") // Check if the answer is "Freezer"
    }
}

struct ProPlaceView_Preview: PreviewProvider {
    static var previews: some View {
        ProPlaceView()
            .previewDevice("iPhone 15 Pro")
    }
}
