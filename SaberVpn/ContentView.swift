//
//  ContentView.swift
//  SaberVpn
//
//  Created by Vladimir on 11.07.2025.
//

import SwiftUI
import Coordinator

struct ContentView: View {
    
    var body: some View {
        
        RoutingView(OnboardingRoute.self) {
            
            ZStack {
                
                Color.blackTheme
                    .ignoresSafeArea()
                    
                
                OnboardingScreen()
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
