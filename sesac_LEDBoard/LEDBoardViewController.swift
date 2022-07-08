//
//  BoardViewController.swift
//  sesac_LEDBoard
//
//  Created by KYUNGSUP GO on 2022/07/06.
//

import UIKit

class LEDBoardViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet var buttonList: [UIButton]!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        resultLabel.numberOfLines = 0
        
        designTextField()
        designButton(sendButton, buttonTitle: "전송", HighlighttedTitle: "빨리보내")
        designButton(textColorButton, buttonTitle: "색상변경", HighlighttedTitle: "바꿔")
        
        
        
        
        
    }
    func designTextField() {
        
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.textColor = .blue
        userTextField.borderStyle = .none
        userTextField.font = .systemFont(ofSize: 15)
        
    }
    
    
    func designButton(_ buttonName: UIButton, buttonTitle: String, HighlighttedTitle: String) {

        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(HighlighttedTitle, for: .highlighted)
        buttonName.backgroundColor = .yellow
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func studyOutletCollection() {
        
        // 1, 반복문 사용
        
        let buttonArrau = [sendButton, textColorButton]
        
        for item in buttonArrau {
            item?.backgroundColor = .blue
            item?.layer.cornerRadius = 2
            
        }
        
        
        //2. 아웃렛 컬렉션
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
            
        }
        
        
        
    }
    

    
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        resultLabel.text = userTextField.text
        
    }
    
    @IBAction func tagGestureCliked(_ sender: UITapGestureRecognizer) {
        
        view.backgroundColor = .red
        view.endEditing(true)
        
    }
    
    @IBAction func exampleButton1(_ sender: UIButton) {
        
        view.endEditing(true)
    }
 
    
    
}
