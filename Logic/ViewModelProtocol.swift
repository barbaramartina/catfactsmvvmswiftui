//
//  ViewModelProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

/// Every view model for every SwiftUI view has to conform to this protocol
/// to be able to facilitate its creation through the ViewModelsFactory
protocol ViewModelProtocol: AnyObject {

    /// the type of view model - every swiftui view must have a view model with 1 type
    /// only if the view models are identifcal, then 2 swiftUI views can share the same type
    var viewModelType: ViewModelType { get }

    /// ViewModels perform actions view a handler
    /// Each handler receive an action with a type and the view model which requested it
    /// Then depending on the action, it makes use of a delegate to perform data manipulation
    /// Do not add any method to the individual view models. Always rely on the handler
    /// For new actions, create a new enum entry in the ViewModelActionProtocol associated to the ViewModel
    /// See for example: ContentViewModelAction
    var handler: ViewModelHandlerProtocol { get }
}
