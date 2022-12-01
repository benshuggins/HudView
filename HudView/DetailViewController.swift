//
//  DetailViewController.swift
//  HudView
//
//  Created by Ben Huggins on 12/1/22.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationController?.navigationBar.backgroundColor = .blue
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTap))
        
    }
    @objc func didTap() {
        
      let hudView = HudView.hud(inView: navigationController!.view, aninated: true)
     // let hudView = HudView.hud(inView: view, aninated: true)
        hudView.text = "Gym Added"
        
        let delaySeconds = 0.6
        DispatchQueue.main.asyncAfter(deadline: .now() + delaySeconds, execute: {
            hudView.hide()
            self.navigationController?.popViewController(animated: false)
        })
    }


}
