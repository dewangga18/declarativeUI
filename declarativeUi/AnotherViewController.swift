//
//  AnotherViewController.swift
//  declarativeUi
//
//  Created by admin on 24/07/24.
//

import UIKit

class AnotherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textLabel = UILabel()
        textLabel.text = "Another View"
        textLabel.textColor = .black
        textLabel.textAlignment = .center
//        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Menentukan ukuran dan posisi UILabel
        textLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        textLabel.center = view.center
        
        // Menambahkan UILabel ke view
        view.addSubview(textLabel)
    }
    
}
