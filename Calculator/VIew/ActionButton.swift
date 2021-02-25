//
//  ActionButton.swift
//  Calculator
//
//  Created by Guillermo Fernandez on 24/02/2021.
//

import SwiftUI

struct ActionButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(label, action: { action() })
            .frame(width: 30, height: 30, alignment: .center)
            .padding()
            .background(Color.gray)
            .foregroundColor(.black)
            .font(.title2)
            .cornerRadius(30)
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(label: "AC", action: { print("AC" )})
    }
}
