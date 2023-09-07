//
//  AppModel.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Welliton Araujo", role: "Mobile Developer", description: "Sou top", location: "Teresina - PI", skiils: [
        Skill(id: UUID().uuidString, skillName: "Swift", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "UI/UX", image: "swift"),
    ], experiencies: [
        Experience(id: UUID().uuidString, companyName: "Cellent Tec", role: "Front End", duration: "Jun 2021 - Ag 2022"),
        Experience(id: UUID().uuidString, companyName: "Compass UOL", role: "Mobile Developer", duration: "Jun 2022 - Present")
    ])
}
