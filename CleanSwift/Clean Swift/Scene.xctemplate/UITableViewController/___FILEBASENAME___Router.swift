//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

@objc protocol ___VARIABLE_sceneName___RoutingLogic {
    //func routeToSomewhere()
}

protocol ___VARIABLE_sceneName___DataPassing {
    var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

class ___VARIABLE_sceneName___Router: NSObject, ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
    weak var viewController: ___VARIABLE_sceneName___ViewController?
    var dataStore: ___VARIABLE_sceneName___DataStore?

    // MARK: - Routing

//    func routeToSomewhere() {
//        let destinationVC = DestinationViewController()
//        let destinationDS = destinationVC.router!.dataStore!
//
//        passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//        navigateToSomewhere(source: viewController!, destination: destinationVC)
//    }

    // MARK: - Passing data

//    func passDataToSomewhere(source: SourceDataStore, destination: inout DestinationDataStore) {
//        let selectedRow = viewController?.tableView.indexPathForSelectedRow?.row
//        destination.data = souurce.data?[selectedRow!]
//    }

    // MARK: - Navigation

//    func navigateToSomewhere(source: SourceViewController, destination: DestinationViewController) {
//        source.navigationController?.pushViewController(destination, animated: true)
//    }
}
