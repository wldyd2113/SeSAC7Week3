//
//  TravelTableViewCell.swift
//  SeSAC7Week3
//
//  Created by 차지용 on 7/14/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var travelLabel: UILabel!
    
    static let identifier = "TravelTableViewCell" //데이터 영역에 공간을 차지하고 있음
    let color = Color()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        travelLabel.backgroundColor = Color.jackRed
        travelLabel.text = "테스트"
        travelLabel.font = .boldSystemFont(ofSize: 17)
        travelLabel.numberOfLines = 0
        travelLabel.backgroundColor = .clear
        dateLabel.backgroundColor = .clear
    }
    
    //사용자의 선택지가 있냐 없냐로 나눔
    override func prepareForReuse() {
        super.prepareForReuse()
        
        //재사용하면서 초기화 되는 건 사용자 입장에서 자유도가 없음
        backgroundColor = .white
    }
    
    func configureCell(travelIndexpath: Travel) {
        travelLabel.text = travelIndexpath.overview
        
        //100% 모든 셀의 배경에 대해서 대등
        if travelIndexpath.like {
            backgroundColor = .yellow
        }
        else{
            backgroundColor = .clear
        }
        dateLabel.text = travelIndexpath.name
    }
        
}
