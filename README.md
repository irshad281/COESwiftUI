# COESwiftUI
This project will provide you the best practices to follow while using **MVI** architecture in SwiftUI.

## MVI Project Structure and Organization:
Creating a well-organized folder structure is essential for maintaining a clean and scalable iOS app project.
A good folder structure can improve collaboration, code readability, and overall project management.

Below is the feauture wise recommeded folder structure of MVI.
<img width="1440" alt="Project Structure" src="https://freeimage.host/i/JIROYb9">

## Code Style and Formatting:
Good code style and formatting are essential practices in Swift (and any programming language) to improve code readability and maintainability. Properly formatted code helps you and other developers understand the code's logic and structure more easily. In Swift, you should follow the Swift style guide, which generally adheres to Apple's Swift API Design Guidelines. 

We have used `Swiftlint` to adhere on Swift coding standards and the all code rules define in `swiftlint.yml` file. Please check `HomeFurnitureView.swift` or `ProductCardView` to check code style and formatting.

## Networking:

Networking or API layer, is a critical component of iOS app development. It serves as an intermediary between your app and external services, such as web servers or APIs.
We have created a SwiftPackage for networking called `NetworkInterface` which is responsible for executing network calls. 

Please check the  `HomeRequest.swift` and `HomeService.swift` to get details about the usage of the `NetworkInterface` package.

## User Interface (UI):
We have used SwiftUI to create designs, Please check `ProductCardView` or `UserListView` for refrence.
