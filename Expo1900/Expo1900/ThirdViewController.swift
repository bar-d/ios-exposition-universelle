//
//  ThirdViewController.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import UIKit

class ThirdViewController: UIViewController {
    var textToSet: String?
    var imageToSet: UIImageView?
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var description2: UILabel!
    @IBOutlet weak var navi2: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        let secondViewController = SecondViewController()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.imageview.image = self.imageToSet?.image
        self.description2.text = self.textToSet
    }

  
}
