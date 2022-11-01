//
// Created for My Images CD
// by Stewart Lynch on 2022-10-31
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import UIKit

class FormViewModel: ObservableObject {
    @Published var name = ""
    @Published var uiImage: UIImage
    
    var id: String?
    
    var updating: Bool { id != nil }
    
    init(_ uiImage: UIImage) {
        self.uiImage = uiImage
    }
    
    init(_ myImage: MyImage) {
        name = myImage.nameView
        id = myImage.imageID
        uiImage = myImage.uiImage
    }
    
    var incomplete: Bool {
        name.isEmpty || uiImage == UIImage(systemName: "photo")!
    }
}
