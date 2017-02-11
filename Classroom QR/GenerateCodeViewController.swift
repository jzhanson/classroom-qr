//
//  GenerateCodeViewController.swift
//  Classroom QR
//
//  Created by Josh Zhanson on 2/11/17.
//  Copyright © 2017 Josh Zhanson. All rights reserved.
//

import Foundation
import UIKit

class GenerateViewController : UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    func generateQRCode(from string : String) -> UIImage? {
    
        let data = string.data(using: String.Encoding.isoLatin1)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            
            // L-M-Q-H: how much of the code can be damaged and still read (low - high)
            filter.setValue("H", forKey: "inputCorrectionLevel")
            
            guard let qrCodeImage = filter.outputImage else { return nil }
            
            let scaleX = imageView.frame.size.width / qrCodeImage.extent.size.width
            let scaleY = imageView.frame.size.height / qrCodeImage.extent.size.height
            
            let transform = CGAffineTransform(scaleX: scaleX, y : scaleY)
            
            if let output = filter.outputImage?.applying(transform) {
                return UIImage(ciImage: output)
            }
        }
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = generateQRCode(from: "This is a QR code")
        imageView.image = image
    }
    
}
