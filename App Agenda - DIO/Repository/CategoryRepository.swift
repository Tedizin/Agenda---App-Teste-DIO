//
//  CategoryRepository.swift
//  App Agenda - DIO
//
//  Created by Henrique Silva on 09/03/21.
//

import Foundation
import UIKit

class categoryRepository {
    
    static func getCategories() -> [Category] {
        let categories = [
            Category(name: "Work", color: UIColor.green),
            Category(name: "Study", color: UIColor.blue),
            Category(name: "To dos", color: UIColor.yellow),
            Category(name: "Reminder", color: UIColor.red),
        ]
        return categories;
    }
}
