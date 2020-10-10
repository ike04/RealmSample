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
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var outputNameLabel: UILabel!
    @IBOutlet weak var userAgeLabel: UILabel!
    @IBOutlet weak var outputAgeLabel: UILabel!
    @IBOutlet weak var userCount: UILabel!
    @IBOutlet weak var outputCountLabel: UILabel!
    @IBOutlet weak var userDeleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTappedRegiserButton(_ sender: Any) {
    }
    
    @IBAction func didTappedDeleteButton(_ sender: Any) {
    }
    
}


