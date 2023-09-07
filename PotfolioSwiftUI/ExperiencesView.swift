//
//  ExperiencesView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import SwiftUI

struct ExperiencesView: View {
    var experiences: [Experience]
    @State var showExperiences = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("Experiences")
                    .font(.title)
                    .fontWeight(.semibold)
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeOut(duration: 0.35)) {
                        showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 19, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14) // HSTack
            
            if(showExperiences) {
                ForEach(experiences) { experience in
                    ExperienceView(experience: experience)
                }
            }
        } .padding(.horizontal, 16)
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperiencesView(experiences: AppModel().portfolio.experiencies)
                .padding(25)
        }
    }
}
