//
//  ViewController.swift
//  ProgressHud2
//
//  Created by REVE Systems on 11/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startLoading()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.stopLoading()
        }
    }
}

