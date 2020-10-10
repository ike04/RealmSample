//
//  ViewController.swift
//  RealmSample
//
//  Created by 池田一成 on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!  {
        didSet {
            userNameTextField.placeholder = "ユーザー名"
            userNameTextField.clearButtonMode = .always
        }
    }
    @IBOutlet weak var userAgeTextField: UITextField!{
        didSet {
            userAgeTextField.placeholder = "年齢"
            userAgeTextField.clearButtonMode = .always
        }
    }
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


