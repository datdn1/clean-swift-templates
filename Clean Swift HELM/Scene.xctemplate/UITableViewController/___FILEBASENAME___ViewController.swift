//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerInput {
    
}

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput {
    
}

class ___FILEBASENAMEASIDENTIFIER___ViewController: UITableViewController, ___FILEBASENAMEASIDENTIFIER___ViewControllerInput {
    
    var output: ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput?
    var router: ___FILEBASENAMEASIDENTIFIER___Router?
    
    // MARK: Object lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ___FILEBASENAMEASIDENTIFIER___Configurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Requests
    
    
    // MARK: Display logic
    
}

//This should be on configurator but for some reason storyboard doesn't detect ViewController's name if placed there
extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.passDataToNextScene(for: segue)
    }
}
