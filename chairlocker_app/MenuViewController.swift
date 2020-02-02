//
//  MenuViewController.swift
//  chairlocker_app
//
//  Created by Akari Shimono on 2020/02/02.
//  Copyright © 2020 kogumffi01. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var menu_view: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // メニュー表示/非表示
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // メニューの位置を取得
        let menuPos = self.menu_view.layer.position
        // 初期位置を画面の外側にするため、メニューの幅の分だけマイナスする
        self.menu_view.layer.position.x = -self.menu_view.frame.width
        // 表示時のアニメーションを作成
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: .curveEaseOut,
                       animations: {
                        self.menu_view.layer.position.x = menuPos.x
                        },
                       completion: {
                        bool in
        })
        
    }
    
    // メニューエリア以外タップ時の処理
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch in touches{
            if touch.view?.tag == 1{
                UIView.animate(withDuration: 0.2,
                               delay: 0,
                               options: .curveEaseIn,
                               animations: {
                                self.menu_view.layer.position.x = -self.menu_view.frame.width
                                },
                               completion: {bool in
                                self.dismiss(animated: true, completion: nil)
                                }
                )
            }
        }
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
