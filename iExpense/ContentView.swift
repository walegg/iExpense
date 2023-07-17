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
//    @State private var user = User(firstName: "Taylor", lastName: "Swift")
//    @AppStorage("tapCount") private var tapCount = 0
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
//    @StateObject var user = User()
//    @State private var showingSheet = false
//    @State private var numbers = [Int]()
//    @State private var currentNumber = 1
    
    var body: some View {
       Button("Save user") {
//            let encoder = JSONEncoder()
//
//            if let data = try? encoder.encode(user) {
//                UserDefaults.standard.set(data, forKey: "UserData")
//            }
        }
        
//        Button("Tap Count: \(tapCount)") {
//            tapCount += 1
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
//        }
        
//        NavigationView {
//            VStack {
//                List {
//                    ForEach(numbers, id: \.self) {
//                        Text("Row \($0)")
//                    }
//                    .onDelete(perform: removeRows)
//                }
//
//                Button("Add number") {
//                    numbers.append(currentNumber)
//                    currentNumber += 1
//                }
//            }
//            .navigationTitle("onDelete()")
//            .toolbar {
//                EditButton()
//            }
//        }
//        Button("Show Sheet") {
//            showingSheet.toggle()
//        }
//        .sheet(isPresented: $showingSheet) {
//            SecondView(name: "Louis")
//        }
//        VStack {
//            Text("Your name is \(user.firstName) \(user.lastName)")
//
//            TextField("First Name", text: $user.firstName)
//            TextField("Last Name", text: $user.lastName)
//
//        }
//        .padding()
        
        
    }
//    func removeRows(at offsets: IndexSet) {
//        numbers.remove(atOffsets: offsets)
//    }
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
