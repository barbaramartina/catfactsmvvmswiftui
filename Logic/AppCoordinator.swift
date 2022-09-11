//
//  AppCoordinator.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

/// Central class where the dependencies container is created and the app state is mantainer
/// This app coordinates the following:
///     - ask for data
///     - update the app state models with the data
///
///  It's also a viewmodel actions handler: every view model which needs an action to be executed
///  have to have a ViewModelHandlerProtocol and call it
///  The AppCoordinator is then the deegate of the ViewModelHandlerProtocol and executed ultimately any action
///  This helps to not overuse the environment and to keep consistency in the place in which actions can be executed over the data
///  Making it easier to debug
class AppCoordinator {

    /// Do not access this shared instance from anywhere in the app except the CatFactsMVVMSwiftUIApp: App
    static var shared: AppCoordinator = {
        let coordinator = AppCoordinator()
        coordinator.start()
        return coordinator
    }()

    /// creates and contain all the dependencies for the app
    let dependencyContainer = DependencyContainer()
    /// holds the data for the app. It is not auto updated. Must be updated only from the AppCoordinator
    let appState = AppState(with: [CatFact]())

    /// To begin the app, the initial data is asked and stored
    func start() {
        Task {
            let facts = await dependencyContainer.dataManager.catFacts()
            appState.catFacts = facts
        }
    }

}
