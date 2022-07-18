//
//  ViewController.swift
//  hoseoNotice-app
//
//  Created by 유채린 on 2022/06/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupCell
        cell.GroupTitle.text = "컴퓨터 공학부"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Group Touch \(indexPath.row)")
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "GroupHomeController"){
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    @IBAction func Click_moveBtn(_ sender: Any) {
        //1.스토리보드에서 컨트롤러 찾기 -> DetailController(스토리보드 id)
        //1-1. 컨트롤러 담을 상수 만들기
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController"){
            //nil방지 위해 if로 옵셔널 바인딩
            //2.실제로 컨트롤러 이동
            //네비게이션에 컨트롤러 넣기
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    @IBAction func Click_moveNotice(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "NoticeController"){
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}

