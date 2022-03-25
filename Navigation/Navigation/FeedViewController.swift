//
//  FeedViewController.swift
//  Navigation
//
//  Created by solkent on 10.02.2022.
//

import UIKit

class FeedViewController: UIViewController {

    private lazy var openPostButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.setTitle("Open post", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(openPostButtonTapped), for: .touchUpInside)
        button.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(openPostButton)
    }

    @objc func openPostButtonTapped(sender: UIButton) {
        let postViewController = PostViewController()
        let postTitle = Post(title: "New Post")
        postViewController.navigationItem.title = postTitle.title
        self.navigationController?.pushViewController(postViewController, animated: true)
        self.navigationItem.backButtonTitle = "Back"
    }

}
