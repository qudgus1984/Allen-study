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
    @IBOutlet weak var bannerTitleLabel: UILabel!
    
    
    // 뷰 컨트롤러의 생명주기 종류 중 하나
    // 사용자에게 화면이 보이기 직전에 실행되는 코드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerImageView.image = UIImage(named: "banner03")
        bannerImageView.layer.cornerRadius = 30
        bannerImageView.layer.borderWidth = 5
        bannerImageView.layer.borderColor = UIColor.blue.cgColor
        
        bannerTitleLabel.text = "우리가 어떤민족 입니까"
        bannerTitleLabel.backgroundColor = .lightGray
        bannerTitleLabel.textColor = .white
        bannerTitleLabel.font = .boldSystemFont(ofSize: 20)

    }
    


}
