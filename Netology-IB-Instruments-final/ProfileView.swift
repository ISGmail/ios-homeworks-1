//
//  ProfileView.swift
//  Netology-IB-Instruments-final
//
//  Created by solkent on 22.02.2022.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var myDateLabel: UILabel!
    @IBOutlet weak var myCityLabel: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
