//
//  ViewController.swift
//  SeSAC7Week3
//
//  Created by 차지용 on 7/11/25.
//

import UIKit
import Toast
class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        print(1)
        print(0)
        print(2)
        print(3)
        print(4)
        print(5)
        print(6)
        
        //3000
        //print 나 파일 추가 등 코드 작성하면서
        //commit message 를 3개 정도 남겨보기
        //빌드가 잘될때 commit

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        view.makeToast("안녕하세요 반갑습니다", duration: 10, position: .top) //바탕에만 뜨는거여서 레이블에 적용안될 가능성이 큼
    }

}

