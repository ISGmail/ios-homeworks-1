//
//  PostViewController.swift
//  Navigation
//
//  Created by solkent on 10.02.2022.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemMint
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(infoButtonTapped))
    }

    @objc func infoButtonTapped(sender: UIBarButtonItem) {
        let infoViewController = InfoViewController()
        self.navigationController?.present(infoViewController, animated: true, completion: nil)
    }
}
