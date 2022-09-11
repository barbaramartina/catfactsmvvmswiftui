//
//  CatFactsMVVMSwiftUIApp.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

import SwiftUI

@main
struct CatFactsMVVMSwiftUIApp: App {

    var body: some Scene {
        WindowGroup {

            // create the main view model
            let dependenciesContainer = AppCoordinator.shared.dependencyContainer
            let viewModelsFactory = dependenciesContainer.viewModelsFactory
            let appState = AppCoordinator.shared.appState
            let viewModel = viewModelsFactory.viewModel(for: .contentView,
                                                        with: AppCoordinator.shared,
                                                        appState: appState)

            // create the main view
            ContentView(viewModel: viewModel as! ContentView.ContentViewModel)
        }
    }
}
