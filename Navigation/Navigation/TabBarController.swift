//
//  TabBarController.swift
//  Navigation
//
//  Created by solkent on 10.02.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .white
        tabBar.tintColor = .label
        tabBar.backgroundColor = .white // change later on other screens
        setupVCs()
    }


    fileprivate func createNavigationController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        //navigationController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navigationController
      }

    func setupVCs() {
          viewControllers = [
            createNavigationController(for: FeedViewController(), title: NSLocalizedString("Newsfeed", comment: ""), image: UIImage(systemName: "house")!),
            createNavigationController(for: ProfileViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
          ]
      }
}
