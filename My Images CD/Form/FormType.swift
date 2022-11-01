//
// Created for My Images CD
// by Stewart Lynch on 2022-11-01
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

enum FormType: Identifiable, View {
    case new(UIImage)
    case update(MyImage)
    
    var id: String {
        switch self {
        case .new:
            return "new"
        case .update:
            return "update"
        }
    }
    
    var body: some View {
        switch self {
        case .new(let uiImage):
            return ImageFormView(viewModel: FormViewModel(uiImage))
        case .update(let myImage):
            return ImageFormView(viewModel: FormViewModel(myImage))
        }
    }
}
