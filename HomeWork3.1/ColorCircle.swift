//
//  ColorCircle.swift
//  HomeWork3.1
//
//  Created by Alex Sander on 21.07.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    
    var body: some View {
        Color(color)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .orange)
    }
}
