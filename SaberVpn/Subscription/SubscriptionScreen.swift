//
//  SubscriptionView.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI
import UISystem

struct SubscriptionScreen: View {
    
    @StateObject var viewModel = SubscriptionViewModel()
    
  
    
    var body: some View {
        ZStack {
            Color.blackTheme
                .ignoresSafeArea()
            
            VStack(spacing: 35) {
                HStack {
                    Text("Подписка")
                        .foregroundColor(.white)
                        .font(.custom("Geist-SemiBold", size: 24))
                        .kerning(-0.72)
                        .lineSpacing(14.4)
                    
                    Image("PRO")
                        .resizable()
                        .frame(width: 43, height: 22)
                }
                
                Text("Бесплатный сервис в течение\n 3 бесплатных дней пробного периода!")
                    .foregroundColor(.descriptionTextColor)
                    .multilineTextAlignment(.center)
                    .font(.custom("Geist-Regular", size: 18))
                    .lineSpacing(10.8)
                    .kerning(-0.72)
                   
                
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
                
                
            }
        }
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionScreen()
    }
}
