//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by solkent on 17.02.2022.
//

import UIKit

class ProfileHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    let fullNameLabel = UILabel()
    let statusTextView = UITextView()
    let setStatusButton = UIButton()
    var statusTextField = UITextField()
    private var statusText: String = ""

    private func setupView() {
        let catImage = UIImage(named: "cat")
        let avatarImageView = UIImageView(image: catImage!)

        avatarImageView.contentMode = UIView.ContentMode.scaleAspectFit
        avatarImageView.center = self.center
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        self.addSubview(avatarImageView)

        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForImage = [
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor)
        ]
        NSLayoutConstraint.activate(constraintsForImage)

        fullNameLabel.text = "Some Profile Title"
        fullNameLabel.textAlignment = .left
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        self.addSubview(fullNameLabel)

        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForTitle = [
            fullNameLabel.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 27),
            fullNameLabel.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            fullNameLabel.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 120),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 30)
        ]
        NSLayoutConstraint.activate(constraintsForTitle)

        statusTextView.backgroundColor = .lightGray
        statusTextView.font = .systemFont(ofSize: 14)
        statusTextView.textColor = .gray
        statusTextView.text = "Waiting for something..."
        statusTextView.isEditable = false
        self.addSubview(statusTextView)

        statusTextView.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForTextView = [
            statusTextView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 57),
            statusTextView.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            statusTextView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 120),
            statusTextView.heightAnchor.constraint(equalToConstant: 30)
        ]
        NSLayoutConstraint.activate(constraintsForTextView)

        statusTextField.placeholder = "Waiting for status..."
        statusTextField.adjustsFontSizeToFitWidth = true
        statusTextField.minimumFontSize = 0.5
        statusTextField.returnKeyType = .done
        statusTextField.autocapitalizationType = .words
        statusTextField.font = .systemFont(ofSize: 15)
        statusTextField.textColor = .systemGray2
        statusTextField.backgroundColor = .white
        statusTextField.borderStyle = .none
        statusTextField.returnKeyType = .next
        statusTextField.keyboardType = .default
        statusTextField.clearButtonMode = .always
        statusTextField.layer.cornerRadius = 7
        statusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
    //        textField.alpha = 0
        self.addSubview(statusTextField)


        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForTextField = [
            statusTextField.topAnchor.constraint(equalTo: self.statusTextView.bottomAnchor, constant: 10),
            statusTextField.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            statusTextField.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 120),
            statusTextField.heightAnchor.constraint(equalToConstant: 30)
        ]
        NSLayoutConstraint.activate(constraintsForTextField)

        setStatusButton.setTitle("Set Status", for: .normal)
        setStatusButton.backgroundColor = .systemBlue
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        self.addSubview(setStatusButton)

        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForButton = [
            setStatusButton.topAnchor.constraint(equalTo: self.statusTextField.bottomAnchor, constant: 10),
            setStatusButton.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor),
            setStatusButton.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(constraintsForButton)


    }
    @objc func buttonPressed(sender: UIButton) {
        if statusText == "" {
            statusTextView.text = "Waiting for something..."
        } else {
                statusTextView.text = statusText
            }
        }

    @objc func statusTextChanged(_ textField: UITextField) {
        if let status = textField.text {
            statusText = status
        } else {
            statusText = ""
        }
    }
}
