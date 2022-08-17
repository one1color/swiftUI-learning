//
//  ExpenseTrackerTutorialApp.swift
//  ExpenseTrackerTutorial
//
//  Created by koki isshiki on 03.08.22.
//

import SwiftUI

@main
struct ExpenseTrackerTutorialApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
