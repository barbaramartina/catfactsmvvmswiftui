//
//  ViewModelsFactory.swift
//  CatFactsMVVMSwiftUI
//
//  Created by Barbara Rodeker on 2022-09-11.
//

struct ViewModelsFactory: ViewModelsFactoryProtocol {

    func viewModel(for type: ViewModelType,
                   with delegate: ViewModelHandlerDelegate,
                   appState: AppState) -> ViewModelProtocol {

        switch type {
            case .contentView:
                let viewModelHandlerProvider = ViewModelMainContentHandlerProvider()
                viewModelHandlerProvider.delegate = delegate
                let viewModel = viewModelHandlerProvider.viewModel(basedOn: appState)
                return viewModel
        }

    }

}
