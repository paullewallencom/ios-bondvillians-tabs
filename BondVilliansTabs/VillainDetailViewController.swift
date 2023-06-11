//
//  VillainDetailViewController.swift
//  BondVilliansTabs
//
//  Created by Apple Computer on 6/11/23.
//


import UIKit

// MARK: - VillainDetailViewController: UIViewController

class VillainDetailViewController: UIViewController {
    
    // MARK: Properties
    
    var villain: Villain!
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.label.text = self.villain.name
  
        self.tabBarController?.tabBar.isHidden = true
        
        self.imageView!.image = UIImage(named: villain.imageName)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}
