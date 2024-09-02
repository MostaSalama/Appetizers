//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Ninja on 02/04/2024.
//

import Foundation

extension Date {
    var eightenYearsAgo : Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    var oneHundredTenYearsAgo : Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
