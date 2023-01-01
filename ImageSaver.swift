//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Ruben Granet on 01/01/2023.
//

import SwiftUI

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error) {
        print("Save finished!")
    }
}
