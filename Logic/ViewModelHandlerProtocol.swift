//
//  ViewModelHandlerProviderProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

import Foundation


/// Every view model has a handler which takes care of executing actions
/// This helps to decouple the execution and keeps the data manipulation centralized.
/// It also allows that 1 view model can use different handlers. So we can plug and play with different
/// actions
protocol ViewModelHandlerProtocol {

    /// every handler has a delegate which is call in every action
    /// the delegate is the App coordinator which has access to all the dependencies and can update the app state
    /// but the delegate can be any other class
    var delegate: ViewModelHandlerDelegate? { get set }


    /// A specific handler can decide if it take care of not of an sepcific action
    /// - Parameters:
    ///   - action: the action required
    ///   - type: the type of the view model
    /// - Returns:
    func canHandle(action: ViewModelActionProtocol, for type: ViewModelType) -> Bool 


    /// Give an action and a view model type, the handler execited the action
    /// - Parameters:
    ///   - action:
    ///   - viewModel: 
    func handle(action: ViewModelActionProtocol, for viewModel: ViewModelProtocol) async

}
