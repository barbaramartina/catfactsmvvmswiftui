//
//  ContentViewModelAction.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

struct ContentViewModelAction: ViewModelActionProtocol {

    enum ActionType {
        case loadFacts
    }
    var type: ContentViewModelAction.ActionType = .loadFacts

}
