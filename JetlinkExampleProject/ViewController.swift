//
//  ViewController.swift
//  jetlinktest
//
//  Created by Irfan Kaya on 15/12/16.
//  Copyright © 2016 gboson. All rights reserved.
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

	@IBAction func chatButtonTapped(_ sender: Any) {
		JetlinkApp.activateChatPanel()
	}

	@IBAction func faqButtonTapped(_ sender: Any) {
		JetlinkApp.activateFAQPanel()
	}
}

