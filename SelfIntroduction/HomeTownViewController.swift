//
//  HomeTownViewController.swift
//  SelfIntroduction
//
//  Created by Austins Work on 9/6/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

import UIKit

class HomeTownViewController: UIViewController {
    var name: String? {
        didSet{
            title = name ?? "No hometown"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
