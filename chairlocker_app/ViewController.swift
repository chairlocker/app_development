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
    @IBOutlet weak var main_toolbar: UIToolbar!
    @IBOutlet weak var home_button: UIButton!
    @IBOutlet weak var notification_button: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ボタンのタイトルを左寄せ
        usage_status_botton.contentHorizontalAlignment = .left;
        // ぴったり左だと気持ち悪いので、余白をつける
        usage_status_botton.titleEdgeInsets = UIEdgeInsets(top:20, left:70, bottom:20, right:20);
        
        
    }
    
    // 通知画面、マイページ画面からホーム画面に戻る
//    @IBAction func returnToTop(segue: UIStoryboardSegue) {}
    
}

