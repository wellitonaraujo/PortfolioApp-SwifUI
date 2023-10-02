//
//  ExperiencesView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import SwiftUI

struct ExperiencesView: View {
    var experiences: [Experience]
    @State var showExperiences = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
               
                Button {
                    withAnimation(.easeOut(duration: 0.35)) {
                        showExperiences.toggle()
                    }
                } label: {
                    Text("Experiences")
                        .font(.title)
                        .fontWeight(.semibold)

                    Image(systemName: "chevron.up")
                        .font(.system(size: 19, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                        .foregroundColor(showExperiences ? .secondary : Color("Primary"))
                }
                .buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 5) // HSTack
            
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
