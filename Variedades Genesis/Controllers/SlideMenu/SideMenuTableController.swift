import Foundation
import SideMenu
import HexColors

class SideMenuTableController: UITableViewController {
    
    
    // MARK: - Let-Var
    
    // MARK: - LifeCycles
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUPActions()
    }
    
    // MARK: - SetUps / Funcs
    
    func setUpUI(){
        
        //NavigationController
        if let navigationController = self.navigationController?.navigationBar {
            navigationController.barTintColor = HexColor(Colors.mainColor)
            navigationController.isTranslucent = false
        }
    }
    
    
    func setUPActions(){
        
        // Refresh cell blur effect in case it changed
        tableView.reloadData()
        guard SideMenuManager.default.menuBlurEffectStyle == nil else {
            return
        }
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath) as! UITableViewVibrantCell
        
        cell.blurEffectStyle = SideMenuManager.default.menuBlurEffectStyle
        return cell
    }
    
}
