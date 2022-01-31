//
//  ViewController.swift
//  FlashLightMax
//
//  Created by Сергей Эймонт on 31.01.2022.
//  Copyright © 2022 Сергей Эймонт. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black 
    }
    
    @IBAction func buttonPress() {
        isLightOn.toggle()
        updateUI()
    }
    
}

