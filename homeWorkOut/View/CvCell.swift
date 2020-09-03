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
            guard let dataListIamaga = dataListImage else {return}
            imageList.image = dataListIamaga.image
            
        }
    }
    
    fileprivate let imageList : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "imgeList1")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds =  true
        iv.layer.cornerRadius = 15
        return iv
    }()
    override init(frame: CGRect) {
           super.init(frame: .zero)
        contentView.addSubview(imageList)
        imageList.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageList.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        imageList.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        imageList.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
           
           
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    
}
