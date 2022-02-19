//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by solkent on 05.02.2022.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var profileTextLabel: UITextView!
    @IBAction func setProfileButton(_ sender: Any) {
            self.nameLabel.text = "Name: Alex"
            self.dateOfBirthLabel.text = "Date of birth: 01.01.2001"
            self.cityLabel.text = "City: Neeeew Yooooork"
            self.profileTextLabel.text = "Opppps"
    }
}
