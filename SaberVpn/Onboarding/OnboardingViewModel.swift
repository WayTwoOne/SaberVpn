//
//  OnboardingViewModel.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI
import Coordinator

final class OnboardingViewModel: ObservableObject {
    
    let dataModel = OnboardingModel.getMockData()
    let coordinator = Coordinator<OnboardingRoute>()

}
