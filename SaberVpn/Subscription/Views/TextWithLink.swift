//
//  TextWithLink.swift
//  SaberVpn
//
//  Created by Vladimir on 15.07.2025.
//

import SwiftUI
import Coordinator

struct TextWithLink: View {
    
    @EnvironmentObject var coordinator: Coordinator<OnboardingRoute>
    
    var body: some View {
        VStack {
            Text("ПОЖАЛУЙСТА, ПЕРЕЙДИТЕ ПО ССЫЛКЕ, ЧТОБЫ")
                .foregroundColor(.descriptionTextColor)
            
            HStack {
                Text("ОЗНАКОМИТЬСЯ С")
                    .foregroundColor(.descriptionTextColor)
                
                Text("ПОЛИТИКОЙ ")
                    .onTapGesture(perform: {
                        coordinator.dismiss()
                        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
                            coordinator.push(.privatePolicy)
                        }
                    })
                    .foregroundColor(.white)
            }
            
            HStack {
                Text("КОНФИДЕНЦИАЛЬНОСТИ ")
                    .onTapGesture(perform: {
                        coordinator.dismiss()
                        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
                            coordinator.push(.privatePolicy)
                        }
                    })
                    .foregroundColor(.white)
                
                Text(" И ")
                    .foregroundColor(.descriptionTextColor)
                
                Text("УСЛОВИЯМИ")
                    .onTapGesture(perform: {
                        coordinator.dismiss()
                        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
                            coordinator.push(.termsOfIser)
                        }
                    })
                    .foregroundColor(.white)
            }
            
            Text("ИСПОЛЬЗОВАНИЯ")
                .onTapGesture(perform: {
                    coordinator.dismiss()
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
                        coordinator.push(.termsOfIser)
                    }
                })
                .foregroundColor(.white)
        }
        .font(.custom("Geist-Regular", size: 12))
        .lineSpacing(6)
        .kerning(0.84)
        .multilineTextAlignment(.center)
    }
}

struct TextWithLink_Previews: PreviewProvider {
    static var previews: some View {
        TextWithLink()
    }
}
