//
//  ImageDetectionViewModel.swift
//  CoreImageSwiftUI
//
//  Created by ioannis giannakidis on 25/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageDetectionViewModel:ObservableObject{
    
    var  name:String = ""
    var manager: ImageDetectionManager
    @Published var PredictionLabel: String = ""
    init(manager: ImageDetectionManager) {
        self.manager = manager
        
        
    }
    func detect(_ name: String) {
        let sourceImage = UIImage(named: name)
        guard let resizedImage = sourceImage?.resizeImage(targetSize: CGSize(width: 224, height: 224)) else {
            fatalError("Unable to resize the image!")
        }
        if let label = self.manager.detect(resizedImage){
            self.PredictionLabel = label
        }
        
    }
}
