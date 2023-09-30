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
    var width: CGFloat = 150
    
    var body: some View {
        VStack(alignment: .center) {
            Image(skill.image)
                .resizable()
                .scaledToFit()
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
                .padding(.bottom, 10)
            
            Text(skill.skillName)
                .font(.system(size: 13))
                

        }
        .padding(.vertical, 10)
        .padding(.vertical, 10)
        .frame(width: width, height: 110)
        
        .background(
        RoundedRectangle(cornerRadius: 12)
            .opacity(0.070)
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skiils[0])
    }
}
