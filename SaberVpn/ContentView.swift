//
//  ContentView.swift
//  SaberVpn
//
//  Created by Vladimir on 11.07.2025.
//

import SwiftUI
import UISystem

struct ContentView: View {
    var body: some View {
            
        ZStack {
            
            Color.init("SuperViewColor")
                .ignoresSafeArea()
            
            OnboardingView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
