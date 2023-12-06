//
//  addJokeViewController.swift
//  app
//
//  Created by mac on 05.12.2023.
//

import UIKit

class addJokeViewController: UIViewController {
    
    private let addJokeTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1.0
        textField.layer.cornerRadius = 10.0
        return textField
    }()
    
    private let addJokeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Add Joke", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.cornerRadius = 10.0
        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        view.addSubview(addJokeTextField)
        view.addSubview(addJokeButton)
        createAddjokeTextFieldConstraint()
        createAddJokeConstraint()
        navigationItem.title = "Save Joke"
    }
    
    private func createAddjokeTextFieldConstraint() {
        addJokeTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        addJokeTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addJokeTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 24).isActive = true
        addJokeTextField.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    private func createAddJokeConstraint() {
        addJokeButton.topAnchor.constraint(equalTo: addJokeTextField.bottomAnchor, constant: 8).isActive = true
        addJokeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}
