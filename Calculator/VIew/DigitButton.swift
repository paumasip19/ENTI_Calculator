//
//  DigitButton.swift
//  Calculator
//
//  Created by Guillermo Fernandez on 24/02/2021.
//

import SwiftUI

struct DigitButton: View {
    let label: String
    let viewModel: CalculatorViewModelProtocol
    
    var body: some View {
        Button(label, action: { viewModel.addDigit(label) })
            .frame(width: 30, height: 30, alignment: .center)
            .padding()
            .background(Color(.sRGB, red: 0.2, green: 0.2, blue: 0.2, opacity: 1))
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(30)
    }
}

struct LongDigitButton: View {
    let label: String
    let viewModel: CalculatorViewModelProtocol

    var body: some View {
        Button(action: { viewModel.addDigit(label) }) {
            HStack {
                Text(label)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                Spacer()
            }
        }
        .frame(width: 100, height: 30, alignment: .center)
        .padding()
        .background(Color(.sRGB, red: 0.2, green: 0.2, blue: 0.2, opacity: 1))
        .cornerRadius(30)
    }
}

struct DigitButton_Previews: PreviewProvider {
    static var previews: some View {
        DigitButton(label: "0", viewModel: CalculatorViewModel())
    }
}
