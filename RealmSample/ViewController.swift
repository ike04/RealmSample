//
//  ViewController.swift
//  RealmSample
//
//  Created by 池田一成 on 2020/10/10.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let realm = try! Realm()
    private var userInfo = UserInfo()

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
    @IBOutlet weak var allUserDeleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchUserInfo()
    }

    @IBAction func didTappedRegiserButton(_ sender: Any) {
        guard let name = userNameTextField.text,
              let age = userAgeTextField.text else { return }
        
        try? realm.write {
            realm.add(UserInfo(value: ["name": name, "age": Int(age) as Any]))
        }
        
        userNameTextField.text = ""
        userAgeTextField.text = ""
    }
    @IBAction func didTeppedDeleteButton(_ sender: Any) {
        let userInfo = realm.objects(UserInfo.self)
        guard let lastUser = userInfo.last else { return }
        try? realm.write {
            realm.delete(lastUser)
        }
    }
    
    @IBAction func didTappedAllUserDeleteButton(_ sender: Any) {
        try? realm.write {
            realm.deleteAll()
        }
    }
    
    func fetchUserInfo() {
        let userInfo = realm.objects(UserInfo.self)
        guard let lastUser = userInfo.last else { return }
        
        outputNameLabel.text = lastUser.name
        outputAgeLabel.text = String(lastUser.age)
        outputCountLabel.text = String(userInfo.count)
    }
}


