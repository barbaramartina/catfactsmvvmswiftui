//
//  RetrievedCatFact.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Martina on 2022-09-11.
//

/// A model representing a fact about cats inspired in this open API:
/// https://catfact.ninja
/// { "fact": "Every year, nearly four million cats are eaten in Asia.", "length": 55 }
struct RetrievedCatFact: Decodable {

    // a string with the description of the facts
    let fact: String
    // how long the fact is in characters
    let length: Int

}
