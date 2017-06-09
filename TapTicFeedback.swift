//
//  TapTicFeedback.swift
//
//
//  Created by Olexa Boyko on 3/14/17.
//  Copyright © 2017 Olexa Boyko. All rights reserved.
//

import Foundation
import UIKit

class TapTicFeedback {
    
    public enum TapTicType {
        case error
        case success
        case warning
        case selectionChanged
        case light
        case medium
        case heavy
    }
    
    static private var notificationFeedbackGenerator    = UINotificationFeedbackGenerator()
    static private var selectionFeedbackGenerator       = UISelectionFeedbackGenerator()
    
    static public func generate(_ type: TapTicType) {
        switch type {
            
        case .success:
            self.notificationFeedbackGenerator.notificationOccurred(.success)
            
        case .light:
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
            
        case.medium:
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
            
        case .heavy:
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
            
        case .error:
            self.notificationFeedbackGenerator.notificationOccurred(.error)
            
        case .warning:
            self.notificationFeedbackGenerator.notificationOccurred(.warning)
            
        case .selectionChanged:
            self.selectionFeedbackGenerator.selectionChanged()
        }
    }
    
}
