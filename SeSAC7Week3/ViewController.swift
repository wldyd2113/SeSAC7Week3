//
//  ViewController.swift
//  SeSAC7Week3
//
//  Created by 차지용 on 7/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    let buttongGit: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("버튼", for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(1)
        print(0)
        print(2)
        print(3)
        print(4)
        print(5)
        print(6)
        
        //print 나 파일 추가 등 코드 작성하면서
        //commit message 를 3개 정도 남겨보기
        print(9)
        view.addSubview(buttongGit)
    }


}

