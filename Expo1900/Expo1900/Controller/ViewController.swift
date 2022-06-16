//
//  Expo1900 - ViewController.swift
//  Created by unchain, bard
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var visitors: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var description1: UILabel!
    @IBOutlet weak var initialNavi: UINavigationItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let data = NSDataAsset(name: "exposition_universelle_1900")?.data else { return }
        guard let decodedData = try? JSONDecoder().decode(ExpoInformation.self, from: data) else { return }
        let headTitle = decodedData.title.split(separator: "(")

        title1.text = headTitle[0] + "\n(\(headTitle[1])"
        image.image = UIImage(named: "poster")
        
        visitors.text = "방문객 : " + (decodedData.visitors.formatNumber() ?? "")  + "명"
        location.text = "개최지 : " + decodedData.location
        duration.text = "개최 기간 : " + decodedData.duration
        description1.text = decodedData.description
        
        // 네비게이션 안보이게 하기
        self.navigationController?.isNavigationBarHidden = true
        initialNavi?.backButtonTitle = "메인"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
}
