🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

                         WIP

🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧


# MVVM for SwiftUI
A sample project with an architectural proposal for data flow in a purely SwiftUI model

# Overview
Cat facts is a simple app which shows a list of facts about cats. The goal of this project is not a nice UI, or a server-client communication layer. 
The goal is a clean and clear MVVM data flow focused proposal, from where a more robust code can be developed.

# MVVM 
"Model View View Model" is a Design Pattern, created around 2005. It was not invented by Apple and is not exclusive of SwiftUI.
Much has been written about it, to learn it, just Google or go to Wikipedia. 
I won't repeat here what many others have already explained very clearly.

![Model-View-View-Model](https://upload.wikimedia.org/wikipedia/commons/8/87/MVVMPattern.png)

*[Author Ugaya 40 Wikimedia](https://commons.wikimedia.org/wiki/File:MVVMPattern.png)*

# Description of the main components
In this example application the code is structured as follows:
- A data manager layer which ask another component to load data and then maps it into a format which makes sense to the UI of the app
- A Service / Data reader component, which load the data from the storage where it is. I used a JSON file. It can by a database, or a server for example.
- A View Model creation mechanism via a ViewModelType (which helps to identify which view model to create for which SwiftUI view)
- A View Model handler, which is a class in charge of executing the actions which SwiftUI views need.
- The more typical classes such as; AppState, AppCoordinator and dependency container.

# Data Flow
TBA

# View Model Creation and Actions Handling
TBA
