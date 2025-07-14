//
//  SubscriptionView.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        ZStack {
            Color.blackTheme
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Подписка")
                        .foregroundColor(.white)
                        .font(.custom("Geist-SemiBold", size: 24))
                    Image("PRO")
                }
            }
        }
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView()
    }
}
