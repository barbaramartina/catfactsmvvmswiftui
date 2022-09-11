//
//  ContentView.swift
//  
//
//  Created by Barbara Martina on 2022-09-11.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel: ContentViewModel

    var body: some View {

        // Yes, the UI design sucks, but the point if this project is not UI
        ScrollView {

            Button("Reload", action: {

                Task {
                    await                 viewModel.handler.handle(action: ContentViewModelAction(type: .loadFacts),
                                                                   for: viewModel)

                }
            })

            ForEach(viewModel.facts) { fact in
                HStack {
                    Text("Fact: ")
                    Spacer()
                    Text(fact)
                }
            }

        }

    }


    class ContentViewModel: ViewModelProtocol, ObservableObject {

        var handler: ViewModelHandlerProtocol

        private(set) var viewModelType: ViewModelType = .contentView

        @Published var facts: [String] = [String]()

        init(handler: ViewModelHandlerProtocol) {
            self.handler = handler
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentView.ContentViewModel(handler: ViewModelMainContentHandlerProvider()))
    }
}

extension String: Identifiable {

    public var id: String {
        return self
    }

}
