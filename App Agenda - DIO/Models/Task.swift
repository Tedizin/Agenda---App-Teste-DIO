//
//  Task.swift
//  App Agenda - DIO
//
//  Created by Henrique Silva on 04/03/21.
//

import Foundation
import UIKit

struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: UIColor.black)
}
