//
//  DetailViewController.swift
//  declarativeUi
//
//  Created by admin on 24/07/24.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let textLabel = UILabel()
        textLabel.text = "Welcome to Detail"
        textLabel.textColor = .black
        textLabel.textAlignment = .center
//        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Menentukan ukuran dan posisi UILabel
        textLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        textLabel.center = view.center
        
        // Menambahkan UILabel ke view
        view.addSubview(textLabel)
        
        // Mengatur constraints untuk UILabel agar berada di tengah layar [cara 2]
//        NSLayoutConstraint.activate([
//            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
        let iconName = "chevron.backward"
        if let img = UIImage(systemName: iconName) {
            let imgWidth = img.size.width
            let imgHeight = img.size.height
            
            let button = UIButton(
                frame: CGRect(x: 0, y: 0, width: imgWidth, height: imgHeight)
            )
            button.setBackgroundImage(img, for: .normal)
            button.addTarget(self, action: #selector(backAction), for: .touchUpInside)
            
            let backButton = UIBarButtonItem(customView: button)
            self.navigationItem.leftBarButtonItem = backButton
        } else {
            print("Image '\(iconName)' not found in assets.")
            let backButton = UIBarButtonItem(
                title: "<",
                style: .done,
                target: self,
                action: #selector(backAction)
            )
            self.navigationItem.leftBarButtonItem = backButton
        }
    }
    
    @objc func backAction() {
        self.dismiss(animated: true, completion: nil)
    }

}
