//
//  ViewController.swift
//  HudView
//
//  Created by Ben Huggins on 12/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backgroundColor = .blue
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTap))
        
    }
    @objc func didTap() {
        
    let detailView = DetailViewController()
    let navVC = UINavigationController(rootViewController: detailView)
       // showDetailViewController(navVC, sender: self)
        show(detailView, sender: self)
    }

}

