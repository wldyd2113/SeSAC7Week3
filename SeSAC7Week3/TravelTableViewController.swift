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
    
    let travel = [Travel(name: "서울", overview: "선유도공원 좋아요", date: "250401", like: false),
                  Travel(name: "대전", overview: "성심당 좋아요", date: "250305", like: true),
                  Travel(name: "대구", overview: "e월드 좋아요", date: "250101", like: false),
                  Travel(name: "부산", overview: "이재모피자 좋아요", date: "2508901", like: false),
                  Travel(name: "경주", overview: "경리단길 좋아요", date: "250712", like: true),
    ] //국가, 설명, 좋아요
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        setBackground()
        //Xib Cell로 구성하는 순간, 필요한 코드
        
        let xib = UINib(nibName: TravelTableViewCell.identifier, bundle: nil)
        
        tableView.register(xib, forCellReuseIdentifier: TravelTableViewCell.identifier)// 테이블 뷰에 등록
        
        tableView.rowHeight = UITableView.automaticDimension //전체 테이블뷰에 적용
        
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return travel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TravelTableViewCell.identifier, for: indexPath) as! TravelTableViewCell
        
        cell.configureCell(travelIndexpath: travel[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
        
    }
    
}
