//
//  DetalhesRoupa.swift
//  Hurllyglins
//
//  Created by DevMakerMobile on 16/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import Foundation
import UIKit

class DetalhesRoupa: UIViewController {
    
    @IBOutlet weak var imageRoupa: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDescrition: UILabel!
    var roupa: Roupa!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageRoupa.image = roupa.image
        lbTitle.text = roupa.title
        lbDescrition.text = roupa.descrition
        
    }
    
    
    
    
}
