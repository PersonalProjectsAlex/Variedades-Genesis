//
//  PagerStripCOntroller.swift
//  Variedades Genesis
//
//  Created by Administrador on 5/05/18.
//  Copyright © 2018 Genesis. All rights reserved.
//
import UIKit
import XLPagerTabStrip
import HexColors
class PagerStripController: ButtonBarPagerTabStripViewController {
    // MARK: - Let-Var
    
    // MARK: - Outlets
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting up UI elements to be used throught the code
        setUpUI()
        
        // setting up general actions/delegates/Core
        setUPActions()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    //Settigns Childs
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = Core.shared.setStoryBoardName(storyboard: "TabbarOptions", controller: Constants.Child1, at: self)
        let child_2 = Core.shared.setStoryBoardName(storyboard: "TabbarOptions", controller: Constants.Child2, at: self)
        let child_3 = Core.shared.setStoryBoardName(storyboard: "TabbarOptions", controller: Constants.Child3, at: self)
        let child_4 = Core.shared.setStoryBoardName(storyboard: "TabbarOptions", controller: Constants.Child4, at: self)
        let child_5 = Core.shared.setStoryBoardName(storyboard: "TabbarOptions", controller: Constants.Child5, at: self)
        let child_6 = Core.shared.setStoryBoardName(storyboard: "TabbarOptions", controller: Constants.Child6, at: self)
        let childViewControllers = [child_1,child_2,child_3,child_4,child_5,child_6]
        
        
        return childViewControllers
    }
    
    
    // MARK: - SetUps / Funcs
    
    func setUpUI(){
        //Setting unselected item
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            
            //change contentview and textlabel colors
            oldCell?.label.textColor = .gray
            newCell?.label.textColor = .white
            
        }
    }
    
    func setUPActions(){
        //Calling Pager
        setUpPager()
        
        //Reload when tabbar item is touched
        reloadPagerTabStripView()
    }
    
    //Setting Pager
    func setUpPager(){
        settings.style.buttonBarItemBackgroundColor = HexColor(Colors.mainColor)
        buttonBarView.selectedBar.backgroundColor = .white
        buttonBarView.backgroundColor = HexColor(Colors.mainColor)
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 13)
        settings.style.buttonBarItemLeftRightMargin = 0
        settings.style.buttonBarItemLeftRightMargin = 0
    }
    
}





