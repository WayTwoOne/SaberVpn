//
//  OnboardingModel.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import Foundation

struct OnboardingModel: Hashable {
    let mainTitle: String
    let imageName: String
    let description: String
    let pageNumber: Int
    let buttonText: String
    let iconName: String
    
    static func getMockData() -> [OnboardingModel] {
        return [
            OnboardingModel(
                mainTitle: "Добро\n пожаловать!",
                imageName: "onboardingOneImage",
                description: "Мы сделали удобный VPN-сервис для вашего комфорта без лишних отвлечений",
                pageNumber: 1,
                buttonText: "Далее",
                iconName: "VectorStart"
            ),
            OnboardingModel(
                mainTitle: "Надежное\n подключение",
                imageName: "onboardingTwoImage",
                description: "Мы защитили ваше соединение от внешнего мира, чтобы вы чувствовали себя спокойно",
                pageNumber: 2,
                buttonText: "Далее",
                iconName: "VectorStart"
            ),
            OnboardingModel(
                mainTitle: "Отсутствие\n рекламы",
                imageName: "onboardingThreeImage",
                description: "Мы полностью убрали постороннюю рекламу, чтобы ничто не отвлекало вас от важных дел",
                pageNumber: 3,
                buttonText: "Завершить",
                iconName: "VectorEnd"
            )
        ]
    }
}
