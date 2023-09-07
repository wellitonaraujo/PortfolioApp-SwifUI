//
//  SkillsView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import SwiftUI

struct SkillsView: View {
    // MARK: - variables
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills = true
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Skills")
                    .font(.title)
                    .fontWeight(.semibold)
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeOut(duration: 0.35)) {
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 19, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())
            } // HSTack
            
            if(showSkills) {
                LazyVGrid(columns: [
                    GridItem(),
                    GridItem(),
                    GridItem()],
                          alignment: .leading, spacing: 12) {
                    ForEach(skills) { skill in
                        SkillView(skill: skill, width: width / 3 - 15)
                    }
                }.padding(.top, 38) // - LazyVGrid
            }
        }
        .padding()
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillsView(skills: AppModel().portfolio.skiils, width: 400)
            
        }
    }
}
