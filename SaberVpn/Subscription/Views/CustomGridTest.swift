//
//  CustomGridTest.swift
//  SaberVpn
//
//  Created by Vladimir on 15.07.2025.
//

import SwiftUI
import UISystem

struct CustomGridTest: View {
    
    @ObservedObject var viewModel: SubscriptionViewModel
    @State private var pressedButton: Int? = nil
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 10) {
                ForEach(viewModel.subscriptions.prefix(2), id: \.self) { i in
                    SubscriptionIntervalButton(
                        buttonColor: .subscriptionButtonColor,
                        buttonPressedColor: viewModel.changeColorOfPressedButton(index: i.id, pressedButton: pressedButton),
                        descriptionTextColor: .descriptionTextColor,
                        interval: i.interval,
                        description: i.cost,
                        action: {
                            pressedButton = i.id
                        },
                        selected: pressedButton)
                    
                }
            }
            
            
            ForEach(viewModel.subscriptions.suffix(1), id: \.self) { i in
                SubscriptionIntervalButton(
                    buttonColor: .subscriptionButtonColor,
                    buttonPressedColor: viewModel.changeColorOfPressedButton(index: i.id, pressedButton: pressedButton),
                    descriptionTextColor: .descriptionTextColor,
                    interval: i.interval,
                    description: i.cost,
                    action: {
                        pressedButton = i.id
                    },
                    selected: pressedButton
                )
                
            }
        }
    }
}

struct CustomGridTest_Previews: PreviewProvider {
    static var previews: some View {
        CustomGridTest(viewModel: SubscriptionViewModel())
    }
}
