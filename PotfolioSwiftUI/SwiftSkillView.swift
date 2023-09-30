//
//  SwiftSkillView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 26/09/23.
//

import SwiftUI

struct SwiftSkillView: View {
    var skill: Skill
    var body: some View {
        Text(skill.id)
    }
}

struct SwiftSkillView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftSkillView(skill: AppModel().portfolio.skiils[0])
    }
}
