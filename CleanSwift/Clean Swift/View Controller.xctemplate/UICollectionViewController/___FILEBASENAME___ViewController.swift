//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: AnyObject {
    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UICollectionViewController, ___VARIABLE_sceneName___DisplayLogic {
    var interactor: ___VARIABLE_sceneName___BusinessLogic?
    var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?

    // MARK: - Object lifecycle

//    init() {
//        super.init()
//        setup()
//    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setup() {
        let viewController = self
        let viewControllerInteractor = ___VARIABLE_sceneName___Interactor()
        let viewControllerPresenter = ___VARIABLE_sceneName___Presenter()
        let viewControllerRouter = ___VARIABLE_sceneName___Router()

        viewControllerInteractor.presenter = viewControllerPresenter
        viewControllerPresenter.viewController = viewController
        viewControllerRouter.dataStore = viewControllerInteractor
        viewControllerRouter.viewController = viewController

        interactor = viewControllerInteractor
        router = viewControllerRouter
    }

    // MARK: - Routing

    func setupRouting() {
        router?.setup()
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
    }

    // MARK: - Do something

    func doSomething() {
        let request = ___VARIABLE_sceneName___.Something.Request()
        interactor?.doSomething(request: request)
    }

    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
    }
}
