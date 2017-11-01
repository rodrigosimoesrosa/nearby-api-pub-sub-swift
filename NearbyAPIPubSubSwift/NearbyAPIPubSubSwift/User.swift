//
//  User.swift
//  NearbyAPIPubSubSwift
//
//  Copyright © 2017 Mirabilis. All rights reserved.
//

import Foundation

class User {
    let model = utsname().machine
    let uuid = NSUUID().uuidString
    var username: String?
    var nationality: String?
}
