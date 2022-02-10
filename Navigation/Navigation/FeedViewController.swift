//
//  FeedViewController.swift
//  Navigation
//
//  Created by solkent on 10.02.2022.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let openPostButton = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        openPostButton.setTitle("Open post", for: .normal)
        openPostButton.setTitleColor(.systemBlue, for: .normal)
        openPostButton.addTarget(self, action: #selector(openPostButtonTapped), for: .touchUpInside)
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
