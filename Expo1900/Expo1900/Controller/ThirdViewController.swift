//
//  ThirdViewController.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var description2: UILabel!
    @IBOutlet weak var navi2: UINavigationItem!
    var textToSet: String?
    var imageToSet: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 세번째 뷰컨 이미지 설정
        self.imageview.image = self.imageToSet?.image
        // 세번째ㅔ 뷰컨에서 보여질 설명 레이블 텍스트 설정
        self.description2.text = self.textToSet  
    }
}
