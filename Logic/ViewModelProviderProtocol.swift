//
//  ViewModelProviderProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//


/// Different classes can be providers of view models
/// This enables to do the creation in a clear way.
/// A factory knows which Provider to use for every SwiftUI view.
/// Having the providers isolated in this way allows to have a manipulable way of creating view models.
/// For example we can have 2 or 3 different providers for the same model, and this providers could be fetching the
/// data required by the view model from different sources.
protocol ViewModelProviderProtocol {

    /// The provider must inform which type of model it can create
    /// - Parameter type:
    /// - Returns:
    func canProvide(viewModelFor type: ViewModelType) -> Bool


    /// We give the provider full access to the current app state. So it can decide which model / data to use for creating the view model (if any)
    /// Also it can subscribe to certain properties, making it easier to update the view models associated with the SwiftUI views
    /// - Parameter currentAppState:
    /// - Returns: 
    func viewModel(basedOn currentAppState: AppState) -> ViewModelProtocol

}
