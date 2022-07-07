//
//  CodyFlixViewController.swift
//  Movie
//
//  Created by 이병현 on 2022/07/06.
//

import UIKit

class CodyFlixViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var eventcodeTextField: UITextField!
    @IBOutlet weak var SignUpButton: UIButton!
    @IBOutlet weak var switchSet: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 이메일 텍스트 필드
        textField(textFieldName: emailTextField, textPlaceHolder: "이메일 또는 전화번호", isSecureText: false)
        
        // 비밀번호 텍스트 필드
        textField(textFieldName: passwordTextField, textPlaceHolder: "비밀번호", isSecureText: true)
        
        // 닉네임 텍스트 필드
        textField(textFieldName: nicknameTextField, textPlaceHolder: "닉네임", isSecureText: false)
        
        // 위치 텍스트 필드
        textField(textFieldName: locationTextField, textPlaceHolder: "위치", isSecureText: false)
        
        // 추천 코드 입력 텍스트 필드
        textField(textFieldName: eventcodeTextField, textPlaceHolder: "추천 코드 입력", isSecureText: false)
        
        
        // 회원가입 버튼
        SignUpButton.setTitle("회원가입", for: UIControl.State.normal)
        SignUpButton.setTitleColor(.black, for: UIControl.State.normal)
        SignUpButton.backgroundColor = .white
        
        // 스위치 버튼
        switchSet.setOn(true, animated: true)
        switchSet.onTintColor = .orange
        switchSet.thumbTintColor = .white

    }
    
    func textField(textFieldName: UITextField, textPlaceHolder: String, isSecureText: Bool) {
        textFieldName.placeholder = textPlaceHolder
        textFieldName.textColor = .black
        textFieldName.keyboardType = .emailAddress
        textFieldName.textAlignment = .center
        textFieldName.borderStyle = .none
        textFieldName.backgroundColor = .darkGray
        textFieldName.isSecureTextEntry = isSecureText
    }
    @IBAction func SighUpButtonClicked(_ sender: UIButton) {
        
    }
    

}
