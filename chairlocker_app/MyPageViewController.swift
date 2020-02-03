//
//  MyPageViewController.swift
//  chairlocker_app
//
//  Created by Akari Shimono on 2020/02/03.
//  Copyright © 2020 kogumffi01. All rights reserved.
//

import UIKit

// プロトコル(UITableViewDataSource, UITableViewDelegate)の追加
class MyPageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var shop_info_view: UITableView!
    
    // テーブルに表示するデータの準備
    var shop_info_list = ["席数", "営業時間", "定休日", "予約・問い合わせ", "予約可否", "住所", "支払い方法", "HP", "公式アカウント", "電話番号", "備考"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // テーブルの行数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return shop_info_list.count
    }
    
    // セルの中身を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "shop_info_cell", for: indexPath)
        //セルに値を設定する
        cell.textLabel!.text = shop_info_list[indexPath.row]
        
        return cell
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
