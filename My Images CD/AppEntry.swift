//
// Created for My Images CD
// by Stewart Lynch on 2022-10-31
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

@main
struct AppEntry: App {
    var body: some Scene {
        WindowGroup {
            MyImagesGridView()
                .environment(\.managedObjectContext, MyImagesContainer().persistentContainer.viewContext)
                .onAppear {
                    print(URL.documentsDirectory.path)
                }
        }
    }
}
