//
//  ViewModelHandlerDelegate.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

import Foundation

/// execiues actions for the view model handlers
protocol ViewModelHandlerDelegate: AnyObject {

    /// reload cat facts from zero
    func wantsToReloadFacts() async

}
