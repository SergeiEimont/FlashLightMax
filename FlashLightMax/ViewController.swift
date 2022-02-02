//
//  ViewController.swift
//  FlashLightMax
//
//  Created by Сергей Эймонт on 31.01.2022.
//  Copyright © 2022 Сергей Эймонт. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = 0
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        switch isLightOn {
        case 0:
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .black
        case 2:
            view.backgroundColor = .red
        case 3:
            view.backgroundColor = .yellow
        case 4:
            view.backgroundColor = .green
        default:
            view.backgroundColor = .white
        }
    }
    
    @IBAction func buttonPress() {
        if isLightOn <= 4 {
            updateUI()
            isLightOn += 1
        } else {
            isLightOn = 0
            updateUI()
        }
    }
    
    @IBAction func buttonBlackWhitePress() {
    }
    
    @IBAction func buttonMulticolorPress() {
    }
    
    @IBAction func buttonFlashlightPress() {
    }
}


