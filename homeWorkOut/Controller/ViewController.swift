//
//  ViewController.swift
//  homeWorkOut
//
//  Created by Mohamed AbouElkhair on 3/09/20.
//  Copyright © 2020 Mohamed AbouElkhair. All rights reserved.
//  http://italkwithcomputer.com

import UIKit

class HomeWorkOut: UIViewController {

    let dataList = [
            LisData(titel: "The First", image: #imageLiteral(resourceName: "ImgaeList2"), url: "/goF"),
            LisData(titel: "The Second", image: #imageLiteral(resourceName: "imgeList1"), url: "/goS"),
            LisData(titel: "the Third", image: #imageLiteral(resourceName: "imgeList3"), url: "/goT"),
            LisData(titel: "", image: #imageLiteral(resourceName: "imgaLest4"), url: "/go")
    ]
    fileprivate let collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CvCell.self, forCellWithReuseIdentifier: "cvList")
        
    return cv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        //view.backgroundColor = .blue
        SetupCollectionView()
    }
}
extension HomeWorkOut : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
     // here you can chenge the width 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cvList", for: indexPath)
        as! CvCell
        cell.dataListImage = self.dataList[indexPath.row]
        
        return cell
        
    }
    
}
extension HomeWorkOut {
    
    func SetupCollectionView (){
    view.addSubview(collectionView)
    collectionView.backgroundColor = .clear
    collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
    collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 100).isActive = true
    collectionView.heightAnchor.constraint(equalTo: collectionView.widthAnchor, multiplier: 0.5).isActive = true
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    
}
