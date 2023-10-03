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
                .fontWeight(.medium)

        }
        .padding(.vertical, 20)
        .frame(width: width, height: 110)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(12)
        .shadow(radius: 3)
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skiils[0])
    }
}
