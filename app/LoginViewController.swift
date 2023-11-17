//
//  LoginViewController.swift
//  app
//
//  Created by mac on 17.11.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let labelJokesLogin: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "JokesLogin"
        label.textColor = .blue
        return label
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
    
    private let buttonLogin: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.layer.borderWidth = 2.0
        
        return button
    }()
    
    private let buttonCreateAccount: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CreateAccount", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.layer.borderWidth = 2.0
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(labelJokesLogin)
        view.addSubview(textFieldEmail)
        view.addSubview(textFieldPassword)
        view.addSubview(buttonLogin)
        view.addSubview(buttonCreateAccount)
        
        createlabelJokesLoginConstraint()
        createTextFieldEmailConstraint()
        createTextFieldPasswordConstraint()
        createButtonLoginConstraint()
        createCreateAccountConstraint()
    }
    
    func createlabelJokesLoginConstraint() {
        labelJokesLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
        labelJokesLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func createTextFieldEmailConstraint() {
        textFieldEmail.topAnchor.constraint(equalTo: labelJokesLogin.bottomAnchor, constant: 15).isActive = true
        textFieldEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textFieldEmail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    }
    
    func createTextFieldPasswordConstraint() {
        textFieldPassword.topAnchor.constraint(equalTo: textFieldEmail.bottomAnchor, constant: 15).isActive = true
        textFieldPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textFieldPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    }
    
    func createButtonLoginConstraint() {
        buttonLogin.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 15).isActive = true
        buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonLogin.widthAnchor.constraint(equalToConstant: 55).isActive = true
    }
    
    func createCreateAccountConstraint(){
        buttonCreateAccount.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 15).isActive = true
        buttonCreateAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCreateAccount.widthAnchor.constraint(equalTo: buttonLogin.widthAnchor, multiplier: 3).isActive = true
    }
}

