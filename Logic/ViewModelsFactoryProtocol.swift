//
//  ViewModelsFactoryProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//


/// In the Dependencies container we keep an instance of this class
/// This class is used whenever a view model must be created for a SwiftUI view
protocol ViewModelsFactoryProtocol {


    /// Knowing which model type is requested, it created a view model
    /// Assign a delegate to the handler of that view model
    /// And gives the current app state to the view model provider
    /// - Parameters:
    ///   - type:
    ///   - delegate:
    ///   - appState:
    /// - Returns: 
    func viewModel(for type: ViewModelType,
                   with delegate: ViewModelHandlerDelegate,
                   appState: AppState) -> ViewModelProtocol

}
