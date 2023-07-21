//
//  ContentView.swift
//  iExpense
//
//  Created by Louis Mille on 17/07/2023.
//

import SwiftUI

//struct SecondView: View {
//    @Environment(\.dismiss) var dismiss
//
//    let name: String
//
//    var body: some View {
//        Button("Dismiss") {
//            dismiss()
//        }
//    }
//}

//class User: ObservableObject {
//    @Published var firstName = "Bilbo"
//    @Published var lastName = "Baggins"
//}

//struct User: Codable {
//    let firstName: String
//    let lastName: String
//
//}

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(expenses.items.filter { $0.type == "Personal"}) { item in
                        HStack {
                            VStack(alignment: .leading){
                                Text(item.name)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text(item.type)
                            }
                            
                            if item.type == "Personal" {
                                if item.amount < 10 {
                                    Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundColor(.green)
                                } else if item.amount < 100 {
                                    Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundColor(.orange)
                                } else if item.amount > 100 {
                                    Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundColor(.red)
                                }
                            }
                            
                            Spacer()
                            
                        }
                    }
                    .onDelete(perform: removeItems)
                } header: {
                    Text("Personal expenses")
                }
                
                
                Section {
                    ForEach(expenses.items.filter { $0.type == "Business"}) { item in
                        HStack {
                            VStack(alignment: .leading){
                                Text(item.name)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text(item.type)
                            }
                            
                            if item.type == "Business" {
                                if item.amount < 10 {
                                    Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundColor(.green)
                                } else if item.amount < 100 {
                                    Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundColor(.orange)
                                } else if item.amount > 100 {
                                    Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                        .foregroundColor(.red)
                                }
                            }
                            
                            Spacer()
                            
                        }
                    }
                    .onDelete(perform: removeItems)
                } header: {
                    Text("Business expenses")
                }
            }
            .navigationTitle("iExpenses")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label : {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
            
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
