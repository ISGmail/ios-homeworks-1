//
//  FeedViewController.swift
//  Navigation
//
//  Created by solkent on 10.02.2022.
//

import UIKit

class FeedViewController: UIViewController {

    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.addArrangedSubview(openPostButtonFirst)
        stackView.addArrangedSubview(openPostButtonSecond)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var openPostButtonFirst: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.setTitle("Open post", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(openPostButtonTapped), for: .touchUpInside)
        button.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
        return button
    }()

    private lazy var openPostButtonSecond: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.setTitle("Open post differently", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(openPostButtonTapped), for: .touchUpInside)
        button.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(buttonsStackView)
        activateStackViewConstraints()
    }

    private func activateStackViewConstraints() {
        let constraints = [
            buttonsStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            buttonsStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            buttonsStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            buttonsStackView.heightAnchor.constraint(equalToConstant: 100)
        ]

        NSLayoutConstraint.activate(constraints)
    }

    @objc func openPostButtonTapped(sender: UIButton) {
        let postViewController = PostViewController()
        let postTitle = Post(title: "New Post")
        postViewController.navigationItem.title = postTitle.title
        self.navigationController?.pushViewController(postViewController, animated: true)
        self.navigationItem.backButtonTitle = "Back"
    }

}
