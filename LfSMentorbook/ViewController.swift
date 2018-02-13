//
//  ViewController.swift
//  LfSMentorbook
//
//  Created by Yukiko Kida on 2018/02/10.
//  Copyright © 2018年 Yukiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mentorArray.append(Mentor(name: "きゃあ", imageName: "IMG_2638.JPG", course: "サブD"))
        mentorArray.append(Mentor(name: "たまこ", imageName: "IMG_2900.JPG", course: "webD"))
        mentorArray.append(Mentor(name: "りゅーじん", imageName: "IMG_5426.JPG", course: "カメラ"))
        mentorArray.append(Mentor(name: "さくちゃん", imageName: "IMG_3208.JPG", course: "webD"))
        mentorArray.append(Mentor(name: "バレンタイン", imageName: "IMG_2952.JPG", course: "メディアアート"))
        mentorArray.append(Mentor(name: "ゆーくん", imageName: "IMG_4809.JPG", course: "ゲーム"))
        mentorArray.append(Mentor(name: "エリオさん", imageName: "IMG_5610.JPG", course: "サブD"))
        mentorArray.append(Mentor(name: "ぬまさん", imageName: "IMG_5503.JPG", course: "メディアアート"))
        mentorArray.append(Mentor(name: "よしさん", imageName: "IMG_2880.JPG", course: "メディアアート"))
        mentorArray.append(Mentor(name: "びちゃびちゃのきゃあ", imageName: "IMG_3093.JPG", course: "水鉄砲"))
        mentorArray.append(Mentor(name: "はるふさん", imageName: "IMG_5633.JPG", course: "iPhone"))
        mentorArray.append(Mentor(name: "sunny", imageName: "IMG_2680.JPG", course: "アニメーション"))
        mentorArray.append(Mentor(name: "mzk", imageName: "IMG_2679.JPG", course: "映像"))
        
        
        setUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
    }
    
    @IBAction func mae(){
        if index != 0{
            index = index - 1
        }
        setUI()
        
    }
    @IBAction func tugi(){
        if index != mentorArray.count-1{
            self.index = self.index + 1
        }
        setUI()
    }
    
    
}

