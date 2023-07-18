//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Louis Mille on 18/07/2023.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
