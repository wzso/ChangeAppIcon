//
//  ViewController.swift
//  ChangeAppIcon
//
//  Created by Zhishen Wen on 2018/4/18.
//  Copyright © 2018 0xa6a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func grayButtonClick(_ sender: UIButton) {
        setAppIcon(to: "gray")
    }
    
    @IBAction func greenButtonClick(_ sender: UIButton) {
        setAppIcon(to: "green")
    }
    
    @IBAction func pinkButtonClick(_ sender: UIButton) {
        setAppIcon(to: "pink")
    }
    
    @IBAction func resetButtonClick(_ sender: UIButton) {
        // `nil` for primary icon
        setAppIcon(to: nil)
    }
}

fileprivate extension ViewController {
    func setAppIcon(to name: String?) {
        let app = UIApplication.shared
        guard app.supportsAlternateIcons else {
            return
        }
        app.setAlternateIconName(name) {
            if let error = $0 {
                print("Failed: \(error.localizedDescription)")
            } else {
                print("Aha, icon changed!")
            }
        }
    }
}
