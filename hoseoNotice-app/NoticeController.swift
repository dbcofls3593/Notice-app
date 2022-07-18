//
//  NoticeController.swift
//  hoseoNotice-app
//
//  Created by 유채린 on 2022/06/23.
//

import UIKit

class NoticeController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "알림"
        self.tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //데이터 몇 개
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //데이터 무엇
    
        //다시 재사용 할 수 있는 셀을 정의해서 테이블 뷰에 넣는다
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoticeCell", for: indexPath) as! NoticeCell
        //as는 부모자식 관계 친자 확인 용. 안전하게 추론하는 경우 as?(나 맞아?) 강제로 바꾸는 경우 as!(나 맞아!)
        cell.NoticeTitle.text = "Google Teachable Machine AI경진대회"
        cell.NoticeState.text = "새로운 공지사항이 올라왔습니다."
        cell.NoticeDate.text = "\(indexPath.row)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //클릭
        print("CLICK! \(indexPath.row)")
    }
}
