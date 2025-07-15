//
//  SubscriptionView.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI
import UISystem
import Coordinator

struct SubscriptionScreen: View {
    
    @StateObject var viewModel = SubscriptionViewModel()
    @EnvironmentObject var coordinator: Coordinator<OnboardingRoute>
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Color.blackTheme
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                HStack {
                    
                    
                    Text("Подписка")
                        .foregroundColor(.white)
                        .font(.custom("Geist-SemiBold", size: 24))
                        .kerning(-0.72)
                        .lineSpacing(14.4)
                        .padding(.leading)
                    
                    HStack {
                        Image("PRO")
                            .resizable()
                            .frame(width: 43, height: 22)
                       
                        Button {
                            coordinator.dismiss()
                        } label: {
                            Image("Cross")
                                .resizable()
                                .frame(width: 10.5, height: 10.5, alignment: .trailing)
                        }
                        .offset(x: width * 0.18)
                    }
                        
                }
                
                Text("Бесплатный сервис в течение\n 3 бесплатных дней пробного периода!")
                    .foregroundColor(.descriptionTextColor)
                    .multilineTextAlignment(.center)
                    .font(.custom("Geist-Regular", size: 18))
                    .lineSpacing(10.8)
                    .kerning(-0.72)
                    .minimumScaleFactor(0.5)
                    
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: -7) {
                        ForEach(viewModel.advantages, id: \.self) { advantage in
                            SubscriptionAdvantagesView(
                                icon: advantage.icon,
                                title: advantage.title,
                                rectangleColor: .advantagesColor
                            )
                            .padding(.leading)
                        }
                    }
                }
                
                SubscribeGridView(viewModel: viewModel)
                
                VStack(spacing: 10) {
                    
                    TryProButton()
                    
                    TextWithLink()
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionScreen()
    }
}
