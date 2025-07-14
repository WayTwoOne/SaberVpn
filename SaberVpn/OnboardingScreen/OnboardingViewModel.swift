//
//  OnboardingViewModel.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

final class OnboardingViewModel: ObservableObject {
    
    @Published var dataModel = OnboardingModel.getMockData()
    
}
