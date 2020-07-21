//
//  RoundedButton.swift
//  HomeWork3.1
//
//  Created by Alex Sander on 21.07.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import SwiftUI

struct RoundedButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("NEXT")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 50, alignment: .center)
        .background(Color(.blue))
        .overlay(
        RoundedRectangle(cornerRadius: 25)
            .stroke(Color.white, lineWidth: 4))
        .cornerRadius(25)
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton(action: {})
    }
}
