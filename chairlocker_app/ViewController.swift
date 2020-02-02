//
//  ViewController.swift
//  chairlocker_app
//
//  Created by Akari Shimono on 2020/02/02.
//  Copyright © 2020 kogumffi01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usage_status_botton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        usage_status_botton.contentHorizontalAlignment = .left;
        usage_status_botton.titleEdgeInsets = UIEdgeInsets(top:20, left:70, bottom:20, right:20);
        // Do any additional setup after loading the view.
    }


}

