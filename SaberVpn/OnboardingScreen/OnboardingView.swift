//
//  OnboardingView.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI
import UISystem
import Coordinator

struct OnboardingView: View {
    @StateObject var viewModel = OnboardingViewModel()
    @EnvironmentObject var coodinator: Coordinator<OnboardingRoute>
    @State private var selection = 0
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image("SaberVpnIcon")
                
                Group {
                    Text("SABER.VPN")
                        .foregroundColor(.white)
                }
            }
            
            TabView(selection: $selection) {
                
                ForEach(Array(viewModel.dataModel.enumerated()), id: \.element) { index, item in
                    
                    VStack(spacing: 10) {
                        
                        HeaderView(text: item.mainTitle)
                            .padding(.top, 10)
                        
                        ImageView(imageName: item.imageName)
                            
                        
                        DescriptionView(description: item.description)
                        
                    }
                    .tag(index)
                    .padding(.bottom, 15)
                }
                
            }
            
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            OnboardingButtonView(
                action: {
                    
                    if selection < viewModel.dataModel.count - 1 {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            selection += 1
                        }
                    } else {
                        coodinator.presentSheet(.subscription)
                    }
                    
                },
                numberOfPage: viewModel.dataModel[selection].pageNumber,
                buttontitle: viewModel.dataModel[selection].buttonText,
                icon: viewModel.dataModel[selection].iconName
            )
        }
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
