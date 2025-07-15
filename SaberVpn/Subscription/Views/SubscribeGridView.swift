//
//  CustomGridTest.swift
//  SaberVpn
//
//  Created by Vladimir on 15.07.2025.
//

import SwiftUI
import UISystem

struct SubscribeGridView: View {
    
    @ObservedObject var viewModel: SubscriptionViewModel
    @State private var pressedButton: Int? = nil
    
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    
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
                        selected: pressedButton
                    )
                    .frame(height: heigth * 0.19)
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
                    selected: pressedButton,
                    discount: i.discount
                )
                .frame(height: heigth * 0.19)
            }
        }
        .padding(.all)
    }
}

struct SubscribeGridView_Previews: PreviewProvider {
    static var previews: some View {
        SubscribeGridView(viewModel: SubscriptionViewModel())
    }
}
