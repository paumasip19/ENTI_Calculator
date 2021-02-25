//
//  OperationButton.swift
//  Calculator
//
//  Created by Guillermo Fernandez on 24/02/2021.
//

import SwiftUI

struct OperationButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(label, action: { action() })
            .frame(width: 30, height: 30, alignment: .center)
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .font(Font.custom("SFUIDisplay", size: 30))
            .cornerRadius(30)
    }
}

struct OperationButton_Previews: PreviewProvider {
    static var previews: some View {
        OperationButton(label: "%", action: { print("action")})
    }
}
