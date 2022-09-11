//
//  CatFactsModelsTransformer.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

struct CatFactsModelsTransformer: CatFactsModelsTransformerProtocol {

    func uiCatFact<T: CatFactProtocol>(from retrievedFact: RetrievedCatFact) -> T {
        return T(fact: retrievedFact.fact)
    }

}
