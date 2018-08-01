// Core.swift
// travi
//
// Created by Administrador on 29/03/18.
//
//
import Foundation
import UIKit

class Core {
    static let shared = Core()
    private init() {}
    
    
    //MARK: - UI
    
    //Show Alert Message (function)
    func alert(message: String, title: String, at viewController: UIViewController){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(okayAction)
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    // Setting custom image onBack Uitabbar
    func setCustomBack(image:UIImage, at: UIViewController){
        var set = image
        set = set.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        if let navigation = at.navigationController?.navigationBar {
            navigation.backIndicatorImage = set
            at.navigationController!.navigationBar.backIndicatorTransitionMaskImage = set
        }
    }
    
    
    
    //Setting transparent effect on NavigationBar
    
    
    // MARK. -Helpers
    
    func setStoryBoardName(storyboard: String, controller: String, at: UIViewController) -> UIViewController{
        return UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(withIdentifier: controller)
    }
    
    
    // MARK. -Components
    
    
    
    // Register cell at a table view
    func registerCell(at tableView: UITableView, named: String, withIdentifier: String? = nil) {
        
        let CellNib = UINib(nibName: named, bundle: nil)
        tableView.register(CellNib, forCellReuseIdentifier: withIdentifier ?? named)
    }
    
    // Register cell at collection view
    func registerCell(at collectionView: UICollectionView, named: String, withIdentifier: String? = nil) {
        
        let CellNib = UINib(nibName: named, bundle: nil)
        collectionView.register(CellNib, forCellWithReuseIdentifier: withIdentifier ?? named)
    }
    
    
    
    
}



