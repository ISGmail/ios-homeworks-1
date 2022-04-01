//
//  LogInViewController.swift
//  Navigation
//
//  Created by solkent on 01.04.2022.
//

import UIKit

class LogInViewController: UIViewController {

    private lazy var logoImageView: UIImageView = {
        let logo = UIImage(named: "logo")
        let logoImage = UIImageView(image: logo!)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
    }()

    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.placeholder = "Email or phone"
        loginTextField.textColor = .black
        loginTextField.font = UIFont.systemFont(ofSize: 16)
        loginTextField.autocapitalizationType = .none
        loginTextField.backgroundColor = .systemGray6
        loginTextField.borderStyle = .roundedRect
        return loginTextField
    }()

    private lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.textColor = .black
        passwordTextField.font = UIFont.systemFont(ofSize: 16)
        passwordTextField.autocapitalizationType = .none
        passwordTextField.backgroundColor = .systemGray6
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()

    private lazy var credsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.addArrangedSubview(loginTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.layer.borderWidth = 0.5 // ?
        stackView.layer.cornerRadius = 10 // ?
        //borderWidth: 0.5pt how to ?
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray2
        button.layer.cornerRadius = 10
        //button.backgroundImage(for: .normal) = UIImage(named: "blue_pixel")??
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupViews()
        activateViewConstraints()
    }

    private func setupViews() {
        view.addSubview(logoImageView)
        view.addSubview(credsStackView)
        view.addSubview(loginButton)
    }
    private func activateViewConstraints() {

    }
}
