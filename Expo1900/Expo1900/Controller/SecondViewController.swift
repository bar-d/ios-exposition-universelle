//
//  SecondViewController.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navi: UINavigationItem!
    let entryList = try! JSONParser.parseEntryList()
    let firstViewController = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // 네비게이션 타이틀
        navi.title = "한국의 출품작"
        // 네비게이션 보이게 하기
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // 넣어도 되고 안넣어도 되고
        // navi.backButtonTitle = "메인"
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
        // 액세서리
        cell.accessoryType = .disclosureIndicator
        // 세번째 뷰를 위한 description
        cell.detailedDescription = entryList[indexPath.row].description
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextViewController: ThirdViewController = segue.destination as? ThirdViewController else { return }
        guard let cell: CustomTableViewCell = sender as? CustomTableViewCell else { return }
        
        // 세번째 뷰컨 이미지 설정
        nextViewController.imageToSet = cell.image1
        // 세번째 설명 레이블 설정
        nextViewController.textToSet = cell.detailedDescription
        // 세번째 네비게이션 타이틀 설정
        nextViewController.navi2.title = cell.title1.text
    }
}
