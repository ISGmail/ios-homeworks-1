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

    let profileTitle = UILabel()
    let statusTextView = UITextView()
    let showStatusButton = UIButton()
    var textField = UITextField()

    private func setupView() {
        let catImage = UIImage(named: "cat")
        let catImageView = UIImageView(image: catImage!)

        catImageView.contentMode = UIView.ContentMode.scaleAspectFit
        catImageView.center = self.center
        catImageView.layer.cornerRadius = 50
        catImageView.clipsToBounds = true
        catImageView.layer.borderWidth = 3
        catImageView.layer.borderColor = UIColor.white.cgColor
        self.addSubview(catImageView)

        catImageView.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForImage = [
            catImageView.widthAnchor.constraint(equalToConstant: 100),
            catImageView.heightAnchor.constraint(equalToConstant: 100),
            catImageView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 16),
            catImageView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor)
        ]
        NSLayoutConstraint.activate(constraintsForImage)

        profileTitle.text = "Some Profile Title"
        profileTitle.textAlignment = .left
        profileTitle.font = UIFont.boldSystemFont(ofSize: 18)
        self.addSubview(profileTitle)

        profileTitle.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForTitle = [
            profileTitle.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 27),
            profileTitle.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            profileTitle.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 120),
            profileTitle.heightAnchor.constraint(equalToConstant: 30)
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

        textField.placeholder = "Waiting for status..."
        textField.adjustsFontSizeToFitWidth = true
        textField.minimumFontSize = 0.5
        textField.returnKeyType = .done
        textField.autocapitalizationType = .words
        textField.font = .systemFont(ofSize: 15)
        textField.textColor = .systemGray2
        textField.backgroundColor = .white
        textField.borderStyle = .none
        textField.returnKeyType = .next
        textField.keyboardType = .default
        textField.clearButtonMode = .always
        textField.layer.cornerRadius = 7
    //        textField.alpha = 0
        self.addSubview(textField)


        textField.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForTextField = [
            textField.topAnchor.constraint(equalTo: self.statusTextView.bottomAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            textField.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 120),
            textField.heightAnchor.constraint(equalToConstant: 30)
        ]
        NSLayoutConstraint.activate(constraintsForTextField)

        showStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        showStatusButton.setTitle("Set Status", for: .normal)
        showStatusButton.backgroundColor = .systemBlue
        showStatusButton.layer.cornerRadius = 4
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        showStatusButton.layer.shadowRadius = 4
        showStatusButton.layer.shadowOpacity = 0.7
        self.addSubview(showStatusButton)

        showStatusButton.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForButton = [
            showStatusButton.topAnchor.constraint(equalTo: self.textField.bottomAnchor, constant: 10),
            showStatusButton.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor),
            showStatusButton.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            showStatusButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(constraintsForButton)


    }
    @objc func buttonPressed(sender: UIButton) {
            if let status = statusTextView.text {
            print(status)
            } else {
                print("No value found")
            }
        }
}
