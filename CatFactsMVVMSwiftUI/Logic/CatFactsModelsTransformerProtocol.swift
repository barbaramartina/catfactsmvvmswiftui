//
//  CatFactsModelsTransformerProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

import Foundation

protocol CatFactsModelsTransformerProtocol {

    /// receives a fact read from the server and create an APP level cat fact
    /// This allow to implement different types of transformers, which could help for example to filter out facts, or convert them, or add emohies to them
    /// With different transformers, the same cat fact read from the server can have different flavours in the UI
    /// - Parameter serverCatFact: the exact model which the server returns
    /// - Returns: the UI level representation
    func uiCatFact<T: CatFactProtocol>(from retrievedFact: RetrievedCatFact) -> T
}
