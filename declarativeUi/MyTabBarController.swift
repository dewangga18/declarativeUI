//
//  MyTabBarViewController.swift
//  declarativeUi
//
//  Created by admin on 24/07/24.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Konstruktor untuk kelas view controller
        let firstViewController = ViewController()
        let secondViewController = AnotherViewController()
     
        // MARK: Menambahkan tabBarItem ke dalam
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
     
        // MARK: Menambahkan tabBarItem dengan gambar lain
        secondViewController.tabBarItem = UITabBarItem(
            title: "Menu Lain",
            image: .actions,
            tag: 1
        )
     
        // MARK: Menambahkan view controller ke dalam class tab bar controller
        viewControllers =  [firstViewController, secondViewController]
        
        // MARK: Mengatur background tab bar
        tabBar.backgroundColor = .white
        
    }

}
