//
//  HeaderView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - variables
    var appModel: AppModel
    
    @State var text: String = ""
    // This is the final text that we want to show
    var animatedText: String = "Welliton Araujo"
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 105, height: 105)
                    .cornerRadius(50)
                    .padding(5)
                    .background(
                        Circle()
                            .opacity(0.7)
                            .shadow(radius: 5)
                )
                Spacer()
            }
            HStack {
                SocialView()
                Spacer()
                VStack {
                    Text(appModel.portfolio.name)
                        .font(.system(size: 22, weight: .semibold, design: .monospaced))
                        .padding(.top, 9)
                        .opacity(0.85)
                    
                    Text(appModel.portfolio.role)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .opacity(0.75)
                        .italic()
                        .padding(.top, 3)
                    
                    HStack {
                        Image(systemName: "location.fill")
                            
                        Text(appModel.portfolio.location)
                            .font(.system(size: 15))
                    }
                    .padding(.top, 5)
                    .opacity(0.45)
                }
                .padding(.trailing, 30)
                Spacer()
    
            }
            

            Text(appModel.portfolio.description)
                .font(.headline)
                .fontWeight(.medium)
                .italic()
                .opacity(0.7)
                .lineSpacing(8)
                .padding(.top, 40)
                .fontDesign(.monospaced)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
