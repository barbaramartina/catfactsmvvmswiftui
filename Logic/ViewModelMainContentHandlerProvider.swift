//
//  ViewModelHandlerProvider.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

import Combine

class ViewModelMainContentHandlerProvider: ViewModelHandlerProtocol, ViewModelProviderProtocol {

    weak var delegate: ViewModelHandlerDelegate?

    private var subscriptions = Set<AnyCancellable>()

    func canProvide(viewModelFor type: ViewModelType) -> Bool {
        switch type {
            case .contentView:  return true
        }
    }

    func viewModel(basedOn currentAppState: AppState) -> ViewModelProtocol {

        // creates the view model for the main view
        let viewModel = ContentView.ContentViewModel(handler: self)
        var factsStrings = [String]()
        let facts = currentAppState.catFacts
        // convert cat facts into an array of strings
        factsStrings = facts.map { $0.fact }
        // an update the view model
        viewModel.facts = factsStrings

        // subscribe to the app state to read new cat facts and update the view model
        // since the view model uses this class as handler and keep a reference, we have to weakify the
        // the viewModel parameter
        currentAppState.$catFacts.sink { [weak viewModel] facts in
            var factsStrings = [String]()
            factsStrings = facts.map { $0.fact }
            viewModel?.facts = factsStrings

        }
        .store(in: &subscriptions)

        return viewModel

    }

    func canHandle(action: ViewModelActionProtocol, for type: ViewModelType) -> Bool {

        guard let action = action as? ContentViewModelAction else { return false }

        switch action.type {
            case .loadFacts:  return true
        }
    }

    func handle(action: ViewModelActionProtocol, for viewModel: ViewModelProtocol) async {

        guard self.canHandle(action: action, for: viewModel.viewModelType) else { return }
        guard let action = action as? ContentViewModelAction else { return }

        switch action.type {
            case .loadFacts:
                await delegate?.wantsToReloadFacts()
        }


    }

}



