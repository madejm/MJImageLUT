//
//  LUT+UIImage.swift
//  MJImageLUT
//
//  Created by Mateusz Madej on 18/12/2019.
//  Copyright © 2019 Mateusz Madej. All rights reserved.
//

import CocoaLUT

extension LUT {

    public func apply(toImage image: UIImage) -> UIImage? {
        
        guard let oldCGImage = image.cgImage else {
            return nil
        }
        let oldCIImage = CIImage(cgImage: oldCGImage)
        guard let newCIImage = self.processCIImage(oldCIImage) else {
            return nil
        }
        
        let context: CIContext = CIContext.init(options: nil)
        guard let newCGImage: CGImage = context.createCGImage(newCIImage, from: newCIImage.extent) else {
            return nil
        }
        let newImage: UIImage = UIImage.init(cgImage: newCGImage, scale: image.scale, orientation: image.imageOrientation)
        return newImage
    }
}
