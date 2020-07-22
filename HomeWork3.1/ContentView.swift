//
//  ContentView.swift
//  HomeWork3.1
//
//  Created by Alex Sander on 21.07.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack{
                ColorCircle(color: UIColor(red: 1,
                                           green: 0,
                                           blue: 0,
                                           alpha: currentLight == .red ? 1 : 0.5))
                ColorCircle(color: UIColor(red: 1,
                                           green: 1,
                                           blue: 0,
                                           alpha: currentLight == .yellow ? 1 : 0.5))
                ColorCircle(color: UIColor(red: 0,
                                           green: 1,
                                           blue: 0,
                                           alpha: currentLight == .green ? 1 : 0.5))
                Spacer()
                RoundedButton(action: { self.switchLight() })
            }
            .padding()
        }
    }
    
    private func switchLight() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
