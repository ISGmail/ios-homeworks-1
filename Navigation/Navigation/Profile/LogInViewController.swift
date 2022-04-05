//
//  LogInViewController.swift
//  Navigation
//
//  Created by solkent on 01.04.2022.
//

import UIKit

class LogInViewController: UIViewController {

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()

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
        stackView.addArrangedSubview(loginTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.layer.borderWidth = 0.5
        stackView.layer.cornerRadius = 10
        stackView.layer.borderColor = UIColor.lightGray.cgColor
        stackView.clipsToBounds = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray2
        let pixel = UIImage(named: "blue_pixel")
        button.setBackgroundImage(pixel, for: .normal)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
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
        self.view.addSubview(self.scrollView)
        self.scrollView.addSubview(self.contentView)
        self.contentView.addSubview(logoImageView)
        self.contentView.addSubview(credsStackView)
        self.contentView.addSubview(loginButton)
    }
    private func activateViewConstraints() {
        let constraints = [
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),

            contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            //contentView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            contentView.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
            //contentView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),

            logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120),
            logoImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),

            credsStackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120),
            credsStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            credsStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            credsStackView.heightAnchor.constraint(equalToConstant: 100),

            loginButton.topAnchor.constraint(equalTo: credsStackView.bottomAnchor, constant: 16),
            loginButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
