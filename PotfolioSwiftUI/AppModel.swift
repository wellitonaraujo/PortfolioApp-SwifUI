//
//  AppModel.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(
        name: "Welliton Araujo",
        role: "Mobile Developer",
        description: "Desenvolvedor Mobile com grande experiência em consumo de cafeína enquanto faz uns códigos que só eu entendo...",
        location: "Teresina - PI",
        
        skiils: [
        Skill(
            id: UUID().uuidString,
            skillName: "Swift",
            image: "swift"),
        
        Skill(
            id: UUID().uuidString,
            skillName: "UI/UX",
            image: "square.grid.3x3.middleright.fill"),
        
        Skill(
            id: UUID().uuidString,
            skillName: "IOS",
            image: "iphone.gen1"),
        
    ], experiencies: [
        Experience(
                id: UUID().uuidString,
                companyName: "Cellent Tec",
                role: "Front End",
                duration: "Jun 2021 - Ag 2022"),
        
        Experience(
            id: UUID().uuidString,
            companyName: "Compass UOL",
            role: "Mobile Developer",
            duration: "Jun 2022 - Present")
    ])
}
