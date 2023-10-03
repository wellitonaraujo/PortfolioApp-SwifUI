//
//  viewModel.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 03/10/23.
//

import Foundation
import SwiftUI


class TypingTextViewModel: ObservableObject {
    @Published var text = ""
    
    private var isTyping = true
    private let textToType = "Mobile Developer"
    private var timer: Timer?
    
    init() {
        startTypingAnimation()
    }
    
    func startTypingAnimation() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] timer in
            guard let self = self else {
                timer.invalidate()
                return
            }
            
            if self.isTyping {
                if self.text.count < self.textToType.count {
                    let index = self.text.index(self.text.startIndex, offsetBy: self.text.count)
                    self.text.append(self.textToType[index])
                } else {
                    self.isTyping = false
                    timer.fire()
                }
            } else {
                if self.text.count > 1 {
                    self.text.removeLast()
                } else {
                    self.isTyping = true
                    timer.fire()
                }
            }
        }
    }
}
