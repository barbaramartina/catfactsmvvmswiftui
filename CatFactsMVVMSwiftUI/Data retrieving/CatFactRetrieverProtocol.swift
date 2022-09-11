//
//  CatFactRetrieverProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

/// Connects to the server and retrieve cat facts
protocol CatFactRetrieverProtocol {

    /// Reads and retrieves a list of facts from a source (can be a json file, a server API, a hardcoded source)
    /// - Returns: facts about cats
    func getFacts() async -> [RetrievedCatFact]

}
