//
//  CVCell.swift
//  homeWorkOut
//
//  Created by Mohamed AbouElkhair on 8/30/20.
//  Copyright © 2020 Mohamed AbouElkhair. All rights reserved.
//

import UIKit

class CvCell: UICollectionViewCell {
    var dataListImage : LisData? {
        didSet{
            
        }
    }
    override init(frame: CGRect) {
           super.init(frame: .zero)
         
           
           
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    
}
