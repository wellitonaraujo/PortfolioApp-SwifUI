//
//  AppModel.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(
        name: "Welliton Araújo",
        role: "Mobile Developer",
        description: "Mobile developer with great experience in consuming caffeine while writing codes that only he understands...",
        location: "Teresina, PI - Brazil",
        email: "welliton.araujo@uol.com.br",
        fone: "(91 98571-5267)",
        
        skiils: [
        
        Skill(
            id: UUID().uuidString,
            skillName: "React Native",
            image: "reactjs"),
        
        Skill(
            id: UUID().uuidString,
            skillName: "Swift",
            image: "swift"),
        
        Skill(
            id: UUID().uuidString,
            skillName: "ReactJS",
            image: "reactjs"),
        
        Skill(
            id: UUID().uuidString,
            skillName: "NodeJS",
            image: "nodejs"),
        
        Skill(
            id: UUID().uuidString,
            skillName: "PostgreSQL",
            image: "postgresql"),
        
        Skill(
            id: UUID().uuidString,
            skillName: "Figma",
            image: "figma"),
        
    ], experiencies: [
        Experience(
            id: UUID().uuidString,
            companyName: "Compass UOL",
            role: "Mobile Developer",
            duration: "Jun 2022 - Present"),
        
        Experience(
                id: UUID().uuidString,
                companyName: "Cellent Tec",
                role: "Front End Developer",
                duration: "Jun 2021 - Mar 2022")
    ])
}
