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
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        profileHeaderView.frame = CGRect(origin: view.frame.origin, size: view.frame.size)
    }
}
