//
//  SkillView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import SwiftUI

struct SkillView: View {
    // MARK: - variables
    var skill: Skill
    var width: CGFloat = 120
    var body: some View {
        VStack(alignment: .trailing) {
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
            
            Text(skill.skillName)
                .font(.headline)
                .padding(.top, 10)
        }
        .padding()
        .frame(width: width)
        .background(
        RoundedRectangle(cornerRadius: 12)
            .opacity(0.075)
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skiils[0])
    }
}
