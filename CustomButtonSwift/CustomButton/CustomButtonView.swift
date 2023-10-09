//
//  CustomButton.swift
//  medPlantoes
//
//  Created by ihan carlos on 11/08/23.
//

import UIKit


public enum Style {
    case containedQuadDark
    case containedOrange
    case containedCustom(backgroundTint: UIColor)
    case borderButton
}

class CustomButton: UIButton {
    
    override var isEnabled: Bool {
        didSet {
            updateButtonAppearance()
        }
    }
    
    init(frame: CGRect, style: Style) {
        super.init(frame: frame)
        setupButton(style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setupButton(style: Style) {
        translatesAutoresizingMaskIntoConstraints = false
    
        switch style {

        case .containedQuadDark:
            titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
            backgroundColor = .purple
            setTitleColor(UIColor.white, for: .normal)
            clipsToBounds = true
            layer.cornerRadius = 6
            
        case.containedOrange:
            titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
            backgroundColor = .orange
            setTitleColor(UIColor.white, for: .normal)
            clipsToBounds = true
            layer.cornerRadius = 22
            
        case let .containedCustom(backgroundTint):
            backgroundColor = backgroundTint
            titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
            setTitleColor(UIColor.black, for: .normal)
            
        case.borderButton:
            layer.borderWidth = 2
            layer.borderColor = UIColor.black.cgColor
            clipsToBounds = true
            layer.cornerRadius = 6
            titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
            setTitleColor(UIColor.black, for: .normal)
            backgroundColor = .clear
        }
    }
    
    private func updateButtonAppearance() {
        if isEnabled {
            alpha = 1.0
        } else {
            alpha = 0.5
        }
    }
}

