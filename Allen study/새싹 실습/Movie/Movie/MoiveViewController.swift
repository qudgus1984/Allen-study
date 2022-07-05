//
//  MoiveViewController.swift
//  Movie
//
//  Created by 이병현 on 2022/07/05.
//

import UIKit

class MoiveViewController: UIViewController {

    @IBOutlet weak var firstPoster: UIImageView!
    @IBOutlet weak var secondPoster: UIImageView!
    @IBOutlet weak var lastPoster: UIImageView!
    
    @IBOutlet weak var ImagePoster: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstPoster.layer.cornerRadius = 65
        firstPoster.layer.borderWidth = 3
        firstPoster.layer.borderColor = UIColor.blue.cgColor
        
        secondPoster.layer.cornerRadius = 65
        secondPoster.layer.borderWidth = 3
        secondPoster.layer.borderColor = UIColor.black.cgColor
        
        lastPoster.layer.cornerRadius = 65
        lastPoster.layer.borderWidth = 3
        lastPoster.layer.borderColor = UIColor.red.cgColor
    }
    
    @IBAction func startClicked(_ sender: UIButton) {
        ImagePoster.image = UIImage(named: "poster\(Int.random(in: 1...5))")
    }
    
}
