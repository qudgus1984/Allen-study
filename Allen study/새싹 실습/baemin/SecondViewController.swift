//
//  SecondViewController.swift
//  baemin
//
//  Created by 이병현 on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    // 아웃렛 변수
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerTitle: UILabel!
    
    
    // 뷰 컨트롤러의 생명주기 종류 중 하나
    // 사용자에게 화면이 보이기 직전에 실행되는 코드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(1)
        print(2)
        print(3)
        print(4)
        print(5)
        
        bannerImageView.image = UIImage(named: "banner\(Int.random(in: 1...3))")
        bannerImageView.layer.cornerRadius = 30
        bannerImageView.layer.borderWidth = 5
        bannerImageView.layer.borderColor = UIColor.blue.cgColor
        
        bannerTitle.text = "배달의 민족"
        bannerTitle.backgroundColor = .black
        bannerTitle.textColor = .white
        bannerTitle.font = .boldSystemFont(ofSize: 20)

    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        bannerImageView.image = UIImage(named: "banner\(Int.random(in: 1...3))")
    }
    

}
