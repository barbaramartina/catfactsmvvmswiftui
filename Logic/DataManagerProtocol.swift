//
//  DataManagerProtocol.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

/// Using a service, which reads data from an storage (either a server or a json file)
/// this class, uses the data, and then applies a transformer to offer to the rest of the app
/// a set of UI facing models created from the data read in the storafe
protocol DataManagerProtocol {

    /// reader of data from a storage: either a server or a json or anyother storage
    var service: CatFactRetrieverProtocol { get }
    /// maps models
    var transformer: CatFactsModelsTransformerProtocol { get }

    /// Initializer
    /// - Parameters:
    ///   - service:
    ///   - transformer:
    init(service: CatFactRetrieverProtocol, transformer: CatFactsModelsTransformerProtocol)

    /// Retrieves cat facts
    /// - Returns:
    func catFacts() async -> [CatFactProtocol]

}
