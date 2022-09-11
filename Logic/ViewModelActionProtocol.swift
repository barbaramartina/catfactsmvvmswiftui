//
//  ViewModelActionProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//


/// For convenienve grouping and identification we need a view model protocol for the actions
/// which can be execute from a certain view model
/// for each view model:
/// - create a class action which conforms to this protocol
/// - create an enumeration within the action (for the action type)
/// - the ViewModelHandler will use this action to know what is required
/// *See* for an example: ContentViewModelAction
protocol ViewModelActionProtocol {}
