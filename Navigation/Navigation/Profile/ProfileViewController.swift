//
//  ProfileViewController.swift
//  Navigation
//
//  Created by solkent on 17.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileHeaderView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        setupImage()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        profileHeaderView.frame = CGRect(origin: view.frame.origin, size: view.frame.size)
    }

    private func setupImage() {
        let catImage = UIImage(named: "cat")
        let catImageView = UIImageView(image: catImage!)

        catImageView.contentMode = UIView.ContentMode.scaleAspectFit
        catImageView.center = self.view.center
        catImageView.layer.cornerRadius = 50
        catImageView.clipsToBounds = true
        catImageView.layer.borderWidth = 3
        catImageView.layer.borderColor = UIColor.white.cgColor

        view.addSubview(catImageView)

        catImageView.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            catImageView.widthAnchor.constraint(equalToConstant: 100),
            catImageView.heightAnchor.constraint(equalToConstant: 100),
            catImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            catImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ]

        NSLayoutConstraint.activate(constraints)
    }
}
