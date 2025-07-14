//
//  OnboardingPath.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI
import Coordinator

enum OnboardingRoute: Routable, Hashable {
    
    case onboarding
    case subscription
    
    var navigationType: NavigationType {
        return .sheet
    }
    
    @ViewBuilder
    func view(router: Coordinator<OnboardingRoute>) -> some View {
        switch self {
        case .onboarding:
            OnboardingView()
        case .subscription:
            SubscriptionView()
        }
    }
}
