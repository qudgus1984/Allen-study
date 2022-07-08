//
//  mainViewController.swift
//  baemin
//
//  Created by 이병현 on 2022/07/08.
//

import UIKit

class mainViewController: UIViewController {

    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func resultButtonClicked(_ sender: UIButton) {
        bannerImageView.image = UIImage(named: "banner\(Int.random(in: 1...3))")
    }

}
