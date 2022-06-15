//
//  SecondViewController.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    let entryList = try! JSONParser().parseEntryList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        // 제목
        cell.title1.text = entryList[indexPath.row].name
        // 짧은 설명
        cell.shortDescription.text = entryList[indexPath.row].shortDescription
        // 이미지
        cell.image1.image = UIImage(named: entryList[indexPath.row].imageName)

        return cell
    }
}
