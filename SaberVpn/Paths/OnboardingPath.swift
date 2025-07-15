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
    case privatePolicy
    case termsOfIser
    
    var navigationType: NavigationType {
        return .fullScreenCover
    }
    
    @ViewBuilder
    func view(router: Coordinator<OnboardingRoute>) -> some View {
        switch self {
        case .onboarding:
            OnboardingScreen()
        case .subscription:
            SubscriptionScreen()
        case .privatePolicy:
            PrivacyPolicyView()
        case.termsOfIser:
            TermsOfUseView()
        }
    }
}
