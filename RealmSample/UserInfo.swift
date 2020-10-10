//
//  UserInfo.swift
//  RealmSample
//
//  Created by 池田一成 on 2020/10/10.
//

import Foundation
import RealmSwift

class UserInfo: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}
