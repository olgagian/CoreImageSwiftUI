//
//  ImageDetectionManager.swift
//  CoreImageSwiftUI
//
//  Created by ioannis giannakidis on 25/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
import  CoreML
import UIKit
class ImageDetectionManager{
    let model = Resnet50()
    func detect(_ img: UIImage) -> String? {
        guard let pixelBuffer = img.toCVPixelBuffer(), let prediction = try? model.prediction(image: pixelBuffer) else {
            return nil
        }
        
        return  prediction.classLabel
    }
}
