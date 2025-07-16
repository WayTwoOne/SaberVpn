//
//  SubscriptionViewModel.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI
import Coordinator

final class SubscriptionViewModel: ObservableObject {
    
    @EnvironmentObject var coordinator: Coordinator<OnboardingRoute>
    
    let advantages = Advantages.getMockData()
    let subscriptions = Subscriptions.getMockData()
    
    func changeColorOfPressedButton(index: Int, pressedButton: Int?) -> Color {
        return pressedButton == index ? .advantagesColor : .subscriptionButtonPressedColor
    }
}
