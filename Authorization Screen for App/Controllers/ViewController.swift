//
//  ViewController.swift
//  Authorization Screen for App
//
//  Created by Roman Evtukhov on 21.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "frontScreen")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let loginTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "Enter your login"

        textField.font = UIFont(name: "Apple SD Gothic Neo", size: 20)

        textField.layer.cornerRadius = 12.0

        textField.backgroundColor = .white

        textField.layer.borderWidth = 2.0

        textField.layer.borderColor = UIColor.white.cgColor

        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configConstraints()
        view.backgroundColor = .white
    }

   
    
    private func configConstraints() {
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        view.addSubview(loginLabel)
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 65),
            loginLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 150),
            loginLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -150)
        ])
    }
    
    
}


