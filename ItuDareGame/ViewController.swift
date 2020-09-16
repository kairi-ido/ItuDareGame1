//
//  ViewController.swift
//  ItuDareGame
//
//  Created by 井戸海里 on 2020/09/05.
//  Copyright © 2020 IdoUmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ラベルの宣言
    @IBOutlet var ituLabel:UILabel!
    @IBOutlet var dokodeLabel:UILabel!
    @IBOutlet var daregaLabel:UILabel!
    @IBOutlet var doushitaLabel:UILabel!
    
    let ituArray:[String] = ["一年前","一週間前","昨日","今日","一昨日","二年後前"]
    
    let dokodeArray:[String]=["山の上で","アメリカで","学校で","クラスで","浜辺で","公園で"]
    
    let daregaArray:[String]=["僕が","大統領が","先生が","友達が","さくちゃんが","ペーちゃんが"]
    
    let doushitaArray:[String]=["叫んだ","演説した","怒った","踊った","転んだ","はねた"]
    
    var index:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //ボタンの宣言
    @IBAction func change(){
        //それぞれのラベルに配列の要素を追加する
        ituLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        //indexの値を＋１する
        index = index+1
        
        //indexの値が３より大きくなったら０に戻す
        if index > 5 {
            index = 0
        }
        
    }
    
    @IBAction func reset(){
        //それぞれのラベルをもとに戻す
        ituLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        doushitaLabel.text = "---"
        
        //indexを初期化する
        index = 0
        
    }

    @IBAction func random(){
        //乱数を生成してそれぞれのindexに入れる
        let ituIndex = Int.random(in: 0...5)
        let dokodeIndex = Int.random(in: 0...5)
        let daregaIndex = Int.random(in: 0...5)
        let doushitaIndex = Int.random(in: 0...5)
        
        //コンソールに出力してそれぞれの値を確かめる
        print("いつ\(ituIndex)")
        print("どこで\(dokodeIndex)")
        print("だれが\(daregaIndex)")
        print("どうした\(doushitaIndex)")
        
        //それぞれのラベルに要素を追加する
        ituLabel.text = ituArray[ituIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
    }

}

