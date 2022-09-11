//
//  CatFactFromJSONService.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

import Foundation

/// A cat facts retriever which read the information from a JSON file
struct CatFactFromJSONService: CatFactRetrieverProtocol {

    private struct JSONData: Decodable {
        var data: [RetrievedCatFact]
    }

    /// Reads and retrieves a list of facts from a source (can be a json file, a server API, a hardcoded source)
    /// - Returns: facts about cats
    func getFacts() async -> [RetrievedCatFact] {

        guard let path = Bundle.main.path(forResource: "cat-facts", ofType: "json") else {
            return [RetrievedCatFact]()
        }

        let url = URL(fileURLWithPath: path)
        guard let data = try? Data(contentsOf: url) else {
            return [RetrievedCatFact]()
        }

        let jsonDecoder = JSONDecoder()
        guard let jsonData = try? jsonDecoder.decode(JSONData.self, from: data) else {
            return [RetrievedCatFact]()
        }

        return jsonData.data
    }

}
