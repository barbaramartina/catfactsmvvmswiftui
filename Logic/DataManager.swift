//
//  DataManagerProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

/// - See: DataManagerProtocol
struct DataManager: DataManagerProtocol {

    internal let service: CatFactRetrieverProtocol
    internal let transformer: CatFactsModelsTransformerProtocol
    

    func catFacts() async -> [CatFactProtocol] {

        let retrievedFacts = await service.getFacts()
        return retrievedFacts.map { retrievedFact in
            let fact: CatFact = transformer.uiCatFact(from: retrievedFact)
            return fact
        }

    }

}
