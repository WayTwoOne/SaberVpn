//
//  SubscriptionViewModel.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

final class SubscriptionViewModel: ObservableObject {
    
    let advantages = Advantages.getMockData()
    let subscriptions = Subscriptions.getMockData()
    
    
    func buttonsWidth(from index: Int)  -> CGFloat{
        if index == 0 || index == 1 {
            return 175
        } else {
            return 360
        }
    }
    
    func changeColorOfPressedButton(index: Int, pressedButton: Int?) -> Color {
        return pressedButton == index ? .advantagesColor : .subscriptionButtonPressedColor
    }
}
