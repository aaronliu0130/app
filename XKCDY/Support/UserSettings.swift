//
//  UserSettings.swift
//  XKCDY
//
//  Created by Max Isom on 7/17/20.
//  Copyright © 2020 Max Isom. All rights reserved.
//

import Foundation
import Combine

class UserSettings: ObservableObject {
    @Published var invertImages: Bool {
        didSet {
            UserDefaults.standard.set(invertImages, forKey: "invertImages")
        }
    }

    @Published var sendNotifications: Bool {
        didSet {
            UserDefaults.standard.set(sendNotifications, forKey: "sendNotifications")
        }
    }

    @Published var deviceToken: String? {
        didSet {
            UserDefaults.standard.set(deviceToken, forKey: "deviceToken")
        }
    }

    init() {
        self.invertImages = UserDefaults.standard.object(forKey: "invertImages") as? Bool ?? false
        self.sendNotifications = UserDefaults.standard.object(forKey: "sendNotifications") as? Bool ?? false
        self.deviceToken = UserDefaults.standard.object(forKey: "deviceToken") as? String ?? nil
    }
}
