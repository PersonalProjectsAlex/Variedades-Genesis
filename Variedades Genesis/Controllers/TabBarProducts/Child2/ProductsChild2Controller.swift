//
//  ProductsChild2Controller.swift
//  Variedades Genesis
//
//  Created by Administrador on 5/05/18.
//  Copyright © 2018 Genesis. All rights reserved.
//

import Foundation
import UIKit
import XLPagerTabStrip
import ImageSlideshow
import Kingfisher

class ProductsChild2Controller: UIViewController, IndicatorInfoProvider,UICollectionViewDelegate {
    
    // MARK: - Let-Var
    var images = [KingfisherSource]()
    var array = [String]()
    
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var slideShow: ImageSlideshow!
    
    // MARK: - LifeCycles
    
    override func viewDidLoad() {
        
        setUPActions()
        
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
       
        
        return IndicatorInfo(title: TabBarTittles.second)
    }
    
    // MARK: - SetUps / Funcs
    
    /**
     *Setting up UI elements to be used through the code*
     - important: This Set Up will just be called to make some UI Changes
     */
    
    func setUpUI(){
        
        //Slide Image: UI
        setSlider()
        
        
    }
    
    func setUPActions(){
        
        //Set Cell Identifier
        Core.shared.registerCell(at: collectionView, named: CellIdentifier.cellIdentidentifier)
        
        
        //TableviewDelegates
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
    }
    

    
    //Setting SlideImage
    
    func setSlider(){
        
        slideShow.backgroundColor = UIColor.white
        slideShow.pageControlPosition = PageControlPosition.underScrollView
        slideShow.contentScaleMode = UIViewContentMode.scaleAspectFill
        slideShow.slideshowInterval = 5.0
        images = [
            
            KingfisherSource(urlString: "https://www.decathlon.es/media/836/8369758/big_6aa9ddf49b2742a598f05cbd1c06afe4.jpg")!,
            KingfisherSource(urlString: "https://www.decathlon.es/media/815/8155549/big_a2537b36c76844a5aaf8be609b9be8d5.jpg")!
        ]
        slideShow.contentScaleMode = .scaleAspectFit
        slideShow.clipsToBounds = true
        slideShow.setImageInputs(images)
        
       
    }
    
    
    
    
    
}
