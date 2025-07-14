//
//  TravelTableViewController.swift
//  SeSAC7Week3
//
//  Created by 차지용 on 7/14/25.
//

import UIKit

class TravelTableViewController: UITableViewController {
    
    let nickName = "고래밥"
    let formatter = DateFormatter() // 연산 비용, 인스턴스 생성비용 크다 -> 시간이 오래 거림

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Xib Cell로 구성하는 순간, 필요한 코드

        let xib = UINib(nibName: "TravelTableViewCell", bundle: nil)
        
        tableView.register(xib, forCellReuseIdentifier: "TravelTableViewCell")// 테이블 뷰에 등록
        
        tableView.rowHeight = UITableView.automaticDimension //전체 테이블뷰에 적용
        
    }
    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell", for: indexPath) as! TravelTableViewCell
        print(#function)
        
        cell.travelLabel.text = "dsadsadsacxzcxzdsadsadsacxzcxzdsadsadsa\n\n\ncxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxz\ndsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxzdsadsadsacxzcxz"
        cell.travelLabel.numberOfLines = 0
        
        formatter.dateFormat = "yy년 MM월 dd일 hh시"
        
        let value = formatter.string(from: Date())
        cell.dateLabel.text = value
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row < 3 {
            return UITableView.automaticDimension

        }
        else {
            return 100
        }
        
    }
    
}
