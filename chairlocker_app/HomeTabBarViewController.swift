//
//  HomeTabBarViewController.swift
//  chairlocker_app
//
//  Created by Akari Shimono on 2020/02/04.
//  Copyright © 2020 kogumffi01. All rights reserved.
//

import UIKit

class HomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 自分の持っているViewControllers(ViewControllerの配列)の1番目を選択
        self.selectedViewController = self.viewControllers![1]
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
