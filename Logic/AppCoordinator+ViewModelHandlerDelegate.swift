//
//  AppCoordinator+ViewModelHandlerDelegate.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

/// Delegate of any action execiuted in the app
/// It coordinates the data manager and makes sure to update the app state
/// Do not update the app state from anywhere else. Do not make any variable part of the environment.
/// This helos keeping consistency.
/// Do not use this class to execute loading, use the data manager for that. The data manager will encapsulate any server - json data
/// manipulation and will return the UI facing model data to the app coordinator
extension AppCoordinator: ViewModelHandlerDelegate {

    /// reload cat facts
    func wantsToReloadFacts() async {

        let facts = await dependencyContainer.dataManager.catFacts()
        appState.catFacts = facts

    }

}

