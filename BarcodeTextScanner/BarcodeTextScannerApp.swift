//
//  BarcodeTextScannerApp.swift
//  BarcodeTextScanner
//
//  Created by Kris on 1/6/2566 BE.
//

import SwiftUI

@main
struct BarcodeTextScannerApp: App {
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
