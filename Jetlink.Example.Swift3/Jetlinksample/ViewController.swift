//
//  ViewController.swift
//  Jetlinksample
//
//  Created by Kaan Tezgel on 28/02/17.
//  Copyright © 2017 VesLabs. All rights reserved.
//

import UIKit
import JetlinkSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ChatClick(_ sender: UIButton) {
        JetlinkApp.activateChatPanel()
    }
    
    @IBAction func FAQClick(_ sender: UIButton) {
        JetlinkApp.activateFAQPanel()
    }
    
    
}

