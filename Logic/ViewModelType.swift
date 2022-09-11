//
//  ViewModelType.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

/// Each SwiftUI view has its own ViewModel. In order to facilitate
/// the creation of view models, each view models is assigned a type.
/// The are ViewModelProviders which depending on the type, create a view model
/// and fill it with the required data and actions handler
enum ViewModelType {

    /// the view model type for the view model o the main view
    case contentView
    
}
