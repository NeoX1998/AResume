//
//  Constant.swift
//  MyResumeApp
//
//  Created by Jane Chao on 22/04/20.
//

import Foundation

typealias Experience = (title: String, company: String, start: String, end: String)

struct Resume {
    static let shared = Resume()
    let name     = "Neo Hsu"
    let title    = "iOS Developer"
    let location = "位置：台北"
    let bio      = "與 IOS 熱戀中，致力於開發功能更強、更人性化的 APP，希望讓更多人加入 IOS 的美好世界"
    let skills   = ["Swift", "SwiftUI", "UIKit", "Git"]
    let experiences: [Experience] = [("Software QA Engineer",
                                      "Pactera Technologies Inc.",
                                      "2021 年 9 月",
                                      "現今"),
                                     ("Software QA Servitor",
                                      "Fastwise.net",
                                      "2021 年 3 月",
                                      "2021 年 8 月"),
                                     ("Servitor",
                                      "TSUNG & CHEN TECHNOLOGIES INCORPORATION",
                                      "2019 年 7 月",
                                      "2019 年 8 月")]
}
