//
//  viewModel.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 03/10/23.
//

import Foundation

class TypingTextViewModel: ObservableObject {
    @Published var roleText = ""
    
    private var isTyping = true
    private let textToType = "Mobile Developer"
    private var timer: Timer?
    
    init() { startTypingAnimation() }
    
    func startTypingAnimation() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true) { [weak self] timer in
            guard let self = self else {
                timer.invalidate()
                return
            }
            
            if self.isTyping {
                if self.roleText.count < self.textToType.count {
                    let index = self.roleText.index(self.roleText.startIndex, offsetBy: self.roleText.count)
                    self.roleText.append(self.textToType[index])
                } else {
                    self.isTyping = false
                    timer.fire()
                }
            } else {
                if self.roleText.count > 1 {
                    self.roleText.removeLast()
                } else {
                    self.isTyping = true
                    timer.fire()
                }
            }
        }
    }
}
