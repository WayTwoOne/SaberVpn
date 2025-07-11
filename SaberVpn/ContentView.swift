//
//  ContentView.swift
//  SaberVpn
//
//  Created by Vladimir on 11.07.2025.
//

import SwiftUI
import UISystem
import Onboarding

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, world!")
            
            Image("onboardingOneImage")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
