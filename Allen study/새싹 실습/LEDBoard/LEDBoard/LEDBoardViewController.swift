//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 이병현 on 2022/07/06.
//

import UIKit


class LEDBoardViewController: UIViewController {
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var textFieldView: UIView!
    
    @IBOutlet var buttonList: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton(buttonOuletVariableName: sendButton, buttonTitle: "전송", HightlightedTitle: "눌러억", bgColor: .red)
        designButton(buttonOuletVariableName: textColorButton, buttonTitle: "이건두번째", HightlightedTitle: "누르는중", bgColor: .yellow)
                
        designTextField()
    }
    
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
    }
    
    // buttonOuletVariableName: 외부 매개변수, Argument Label -> 생략 가능
    // buttonName : 내부 매개변수, Parameter Name
    // _ : 와일드카드 식별자
    
    func designButton(buttonOuletVariableName buttonName: UIButton, buttonTitle: String, HightlightedTitle: String, bgColor: UIColor) { // 함수 호출 연산자 ()
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(HightlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func studyOuletCollection() {
        //1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        //2. 아웃렛 컬렉션
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        print(sendButton.currentTitle)
        resultLabel.text = userTextField.text
        
    }
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = .blue
        
        // 키보드 내리기
        view.endEditing(true)
        if textFieldView.isHidden == true {
            textFieldView.isHidden = false
        } else {
            textFieldView.isHidden = true
        }
    }
    
    @IBAction func exampleButton1(_ sender: UIButton) {
        view.endEditing(true)

    }
    
    
    @IBAction func exampleButton2(_ sender: UIButton) {
    }
    
    @IBAction func exampleButton3(_ sender: UIButton) {
    }
    
    //연결관계를 다 끊어보고 Any

    @IBAction func textFieldClicked(_ sender: UITextField) {
        view.endEditing(true)
    }
    
}
