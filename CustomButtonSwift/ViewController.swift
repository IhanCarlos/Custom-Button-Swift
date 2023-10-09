//
//  ViewController.swift
//  CustomButtonSwift
//
//  Created by ihan carlos on 09/10/23.
//

import UIKit

class ViewController: UIViewController {

    lazy var customButton1: CustomButton = {
        let button = CustomButton(frame: .zero, style: .containedQuadDark)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Exemple 1", for: .normal)
        return button
    }()

    lazy var customButton2: CustomButton = {
        let button = CustomButton(frame: .zero, style: .containedOrange)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Exemple 2", for: .normal)
        return button
    }()

    lazy var customButton3: CustomButton = {
        let button = CustomButton(frame: .zero, style: .borderButton)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Exemple 3", for: .normal)
        return button
    }()

    lazy var customButton4: CustomButton = {
        let button = CustomButton(frame: .zero, style: .containedCustom(backgroundTint: .clear))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Exemple 4", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSubViews()
        setUpContraints()
    }

    private func setUpSubViews() {
        view.addSubview(customButton1)
        view.addSubview(customButton2)
        view.addSubview(customButton3)
        view.addSubview(customButton4)
    }

    private func setUpContraints() {
        NSLayoutConstraint.activate([
            customButton1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            customButton1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            customButton1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            customButton1.heightAnchor.constraint(equalToConstant: 50),
            
            customButton2.topAnchor.constraint(equalTo: customButton1.bottomAnchor, constant: 20),
            customButton2.leftAnchor.constraint(equalTo: customButton1.leftAnchor),
            customButton2.rightAnchor.constraint(equalTo: customButton1.rightAnchor),
            customButton2.heightAnchor.constraint(equalToConstant: 50),
            
            customButton3.topAnchor.constraint(equalTo: customButton2.bottomAnchor, constant: 20),
            customButton3.leftAnchor.constraint(equalTo: customButton2.leftAnchor),
            customButton3.rightAnchor.constraint(equalTo: customButton2.rightAnchor),
            customButton3.heightAnchor.constraint(equalToConstant: 50),
            
            customButton4.topAnchor.constraint(equalTo: customButton3.bottomAnchor, constant: 20),
            customButton4.leftAnchor.constraint(equalTo: customButton3.leftAnchor),
            customButton4.rightAnchor.constraint(equalTo: customButton3.rightAnchor),
            customButton4.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
