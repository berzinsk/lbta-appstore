//
//  BaseTabBarController.swift
//  appstore
//
//  Created by karlis.berzins on 13/04/2020.
//  Copyright © 2020 berzinsk. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()

    let navigationBarAppearance = UINavigationBarAppearance()
    navigationBarAppearance.configureWithDefaultBackground()

    let redViewController = UIViewController()
    redViewController.view.backgroundColor = .white
    redViewController.navigationItem.title = "Apps"

    let redNavigationController = UINavigationController(rootViewController: redViewController)
    redNavigationController.tabBarItem.title = "Apps"
    redNavigationController.tabBarItem.image = UIImage(named: "apps")
    redNavigationController.navigationBar.prefersLargeTitles = true
    redNavigationController.navigationBar.scrollEdgeAppearance = navigationBarAppearance


    let blueViewController = UIViewController()
    blueViewController.view.backgroundColor = .white
    blueViewController.navigationItem.title = "Search"

    let blueNavigationController = UINavigationController(rootViewController: blueViewController)
    blueNavigationController.tabBarItem.title = "Search"
    blueNavigationController.tabBarItem.image = UIImage(named: "search")
    blueNavigationController.navigationBar.prefersLargeTitles = true
    blueNavigationController.navigationBar.scrollEdgeAppearance = navigationBarAppearance

    viewControllers = [
      redNavigationController,
      blueNavigationController
    ]
  }
}
