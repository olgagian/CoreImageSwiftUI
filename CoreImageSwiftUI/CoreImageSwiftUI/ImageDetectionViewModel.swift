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

class ImageDetectionViewModel {
    
    var  name:String = ""
    var manager: ImageDetectionManager
    @Published var PredictionLabel: String = ""
    init(manager: ImageDetectionManager) {
        self.manager = manager
        
        
    }
    func detect(_ name: String) {
        //resizethje image
        
        //detect the image
        
        //update the prediction label with the image prediction
    }
}
