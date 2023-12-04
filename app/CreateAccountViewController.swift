//
//  CreateAccountViewController.swift
//  app
//
//  Created by mac on 20.11.2023.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    private let labelCreateAccount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Create Jokes Account"
        label.textColor = .blue
        label.textAlignment = .center
        return label
    }()
    
    private let textFieldUsername: UITextField = {
        let textField  = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Username"
        textField.layer.borderWidth = 2.0
        return textField
    }()
    
    private let textFieldEmail: UITextField = {
        let textField  = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email Address"
        textField.layer.borderWidth = 2.0
        return textField
    }()
    
    private let textFieldPassword: UITextField = {
        let textField  = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.layer.borderWidth = 2.0
        return textField
    }()
    
    private let buttonCreateAccount: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.layer.borderWidth = 2.0
        return button
    }()
    
    private let buttonCancel: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.layer.borderWidth = 2.0
        button.addTarget(self, action: #selector(didTapCloseButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func didTapCloseButton() {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(labelCreateAccount)
        view.addSubview(textFieldUsername)
        view.addSubview(textFieldEmail)
        view.addSubview(textFieldPassword)
        view.addSubview(buttonCreateAccount)
        view.addSubview(buttonCancel)
        
        createLabelCreateAccountConstraint()
        createTextFieldUsernameConstraint()
        createTextFieldEmailConstraint2()
        createTextFieldPasswordConstraint2()
        createButtonCreateAccountConstraint()
        createButtonCancelConstraint()
        
    }
    
    func createLabelCreateAccountConstraint() {
        labelCreateAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelCreateAccount.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
    }
    
    func createTextFieldUsernameConstraint() {
        textFieldUsername.topAnchor.constraint(equalTo: labelCreateAccount.bottomAnchor, constant: 15).isActive = true
        textFieldUsername.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textFieldUsername.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    }
    
    func createTextFieldEmailConstraint2() {
        textFieldEmail.topAnchor.constraint(equalTo: textFieldUsername.bottomAnchor, constant: 5).isActive = true
        textFieldEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textFieldEmail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    }
    
    func createTextFieldPasswordConstraint2() {
        textFieldPassword.topAnchor.constraint(equalTo: textFieldEmail.bottomAnchor, constant: 5).isActive = true
        textFieldPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textFieldPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    }
    
    func createButtonCreateAccountConstraint() {
        buttonCreateAccount.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 10).isActive = true
        buttonCreateAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCreateAccount.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func createButtonCancelConstraint() {
        buttonCancel.topAnchor.constraint(equalTo: buttonCreateAccount.bottomAnchor, constant: 10).isActive = true
        buttonCancel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCancel.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
}
