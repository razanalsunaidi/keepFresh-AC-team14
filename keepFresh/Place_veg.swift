//
//  Place_veg.swift
//  keepFresh
//
//  Created by haifa on 30/09/2024.
//

import SwiftUI

struct VegPlaceView: View {
    @State private var selectedAnswer: String?
    @State private var isCorrect: Bool? = nil

    var body: some View {
        ZStack {
            Image("veg_time")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 16) {
                Text("Where to store cucumber?")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()

                Image("cuc")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 200)

                // Button for Refrigerator (correct answer)
                Button(action: {
                    checkAnswer("Refrigerator")
                }) {
                    Text("Refrigerator")
                        .frame(width: 200, height: 50)
                        .background(Color("GreenBtn"))
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
                        .background(Color("GreenBtn"))
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
                        .background(Color("GreenBtn"))
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
        isCorrect = (answer == "Refrigerator") // Check if the answer is "Refrigerator"
    }
}

struct VegPlaceView_Preview: PreviewProvider {
    static var previews: some View {
        VegPlaceView()
            .previewDevice("iPhone 15 Pro")
    }
}
