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

        let profileTitle = UILabel()
        profileTitle.text = "Some Profile Title"
        profileTitle.textAlignment = .left
        profileTitle.font = UIFont.boldSystemFont(ofSize: 18)
        self.addSubview(profileTitle)

        profileTitle.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForTitle = [
            profileTitle.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 27),
            profileTitle.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            profileTitle.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 120),
            profileTitle.heightAnchor.constraint(equalToConstant: 30)]

        NSLayoutConstraint.activate(constraintsForTitle)

        let statusTextView = UITextView()
        statusTextView.backgroundColor = .lightGray
        statusTextView.font = .systemFont(ofSize: 14)
        statusTextView.textColor = .gray
        statusTextView.text = "Waiting for something..."
        self.addSubview(statusTextView)

        statusTextView.translatesAutoresizingMaskIntoConstraints = false
        let constraintsForTextView = [
            statusTextView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 57),
            statusTextView.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            statusTextView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 120),
            statusTextView.heightAnchor.constraint(equalToConstant: 30)]

        NSLayoutConstraint.activate(constraintsForTextView)
    }
}
