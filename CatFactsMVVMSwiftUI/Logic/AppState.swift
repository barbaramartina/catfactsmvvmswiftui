//
//  AppState.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

import Combine

/// The general container where the models are kept
/// Only update this app state from the main coordinator
class AppState {

    /// a list of facts about cats
    @Published var catFacts: [CatFactProtocol]

    /// initial facts list
    init(with facts: [CatFactProtocol]) {
        self.catFacts = facts
    }

}
