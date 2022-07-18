//
//  GroupHomeController.swift
//  hoseoNotice-app
//
//  Created by 유채린 on 2022/06/29.
//

import UIKit

class GroupHomeController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "홈"
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //데이터 몇 개
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //데이터 무엇
    
        //다시 재사용 할 수 있는 셀을 정의해서 테이블 뷰에 넣는다
        if (indexPath.row == 0){
            let cell : GroupCell = self.tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
        else{
            let cell : NoticeCell =  self.tableView.dequeueReusableCell(withIdentifier: "NoticeCell", for: indexPath) as! NoticeCell
            //as는 부모자식 관계 친자 확인 용. 안전하게 추론하는 경우 as?(나 맞아?) 강제로 바꾸는 경우 as!(나 맞아!)
            cell.GroupHomeNoticeTitle.text = "Google Teachable Machine AI경진대회"
            cell.GroupHomeNoticeDate.text = "\(indexPath.row)"
            
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //클릭
        print("CLICK! \(indexPath.row)")
        if(indexPath.row == 0 || indexPath.row == 1){
            //0번, 1번은 터치 안 되게 함
        }
        else{
            if let controller = self.storyboard?.instantiateViewController(withIdentifier: "NoticeDetailController"){
            self.navigationController?.pushViewController(controller, animated: true)
            }
        }
    }
    
}
