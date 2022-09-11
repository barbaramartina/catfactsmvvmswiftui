//
//  DependencyContainer.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

/// All the classes needed by the app to handle data, transform it and create view models for the swiftUI views
/// are created here
/// The dependency container is accessible via the main coordinator.
/// Do not globally access though, rely in the view model handlers to ask for actions to be executed
/// or data to be reloaded
struct DependencyContainer {

    /// a class which reads cat fats from somewhere: json - server - etc
    let retriever: CatFactRetrieverProtocol
    /// in charge of loading the data
    let dataManager: DataManagerProtocol
    /// a mapper between storage facing models and UI facing models
    let transformer: CatFactsModelsTransformerProtocol
    /// a factory which decides which view models to create for which SwiftUI view
    let viewModelsFactory: ViewModelsFactoryProtocol

    init() {
        retriever = CatFactFromJSONService()
        transformer = CatFactsModelsTransformer()
        dataManager = DataManager(service: retriever, transformer: transformer)
        viewModelsFactory = ViewModelsFactory()
    }

}
