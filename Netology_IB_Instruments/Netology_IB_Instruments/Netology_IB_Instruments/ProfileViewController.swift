//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by solkent on 04.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? UIView {
                    self.view.addSubview(profileView)
                }
        
    }
}
