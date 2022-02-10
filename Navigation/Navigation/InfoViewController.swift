//
//  InfoViewController.swift
//  Navigation
//
//  Created by solkent on 10.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemIndigo
        let alertButton = UIButton(frame: CGRect(x: 100, y: 400, width: 200, height: 50))
        alertButton.setTitle("Alert", for: .normal)
        alertButton.setTitleColor(.white, for: .normal)
        alertButton.addTarget(self, action: #selector(alertButtonTapped), for: .touchUpInside)
        self.view.addSubview(alertButton)
    }

    @objc func alertButtonTapped(sender: UIButton) {
        let alertController = UIAlertController(title: "Danger!", message: "You are reading an alert", preferredStyle: .actionSheet)
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction!) in print("OK Was pressed!")})
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action: UIAlertAction!) in print("Cancel was pressed!")})
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)

        self.present(alertController, animated: true, completion: nil)
    }

}
