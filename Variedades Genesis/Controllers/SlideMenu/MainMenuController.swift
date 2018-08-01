//
//  MainMenuController.swift
//  Variedades Genesis
//
//  Created by Administrador on 5/05/18.
//  Copyright © 2018 Genesis. All rights reserved.
//

import UIKit
import SideMenu

class MainMenuController: UIViewController {
    
    
    @IBOutlet weak var showMenuButton: UIBarButtonItem!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting up general actions/delegates/Core
        setUPActions()
        
        let searchImage  = #imageLiteral(resourceName: "iconFav")
        
       
        let searchButton = UIBarButtonItem(image: searchImage,  style: .plain, target: self, action: Selector("didTapSearchButton:"))
        
        navigationItem.leftBarButtonItems = [showMenuButton,searchButton]
    }

    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }
 
    
    // MARK: - SetUps / Funcs
    
    func setUPActions(){
        
        //Setting SideMenu
        setupSideMenu()
        
        
    
    }
    
    fileprivate func setupSideMenu() {
        
        // Defining menus
        SideMenuManager.default.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        
        // Enable gestures
        if let navigation = self.navigationController {
            SideMenuManager.default.menuAddPanGestureToPresent(toView: navigation.navigationBar)
            SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: navigation.view)
        }
        
    }
    
    

    

}
