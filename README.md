# 🛒 ManicaChunksOnline

A modern e-commerce iOS application built with SwiftUI that demonstrates clean architecture, reusable components, and robust error handling on registration and login screens.
<table>
  <tr>
    <td><img src="https://github.com/carrington-manyuchi/ManicaChunksOnline/blob/aa4da4c404d7b4efed0cfcfbbaba8ada3e1756d3/Simulator%20Screenshot%20-%20iPhone%2017%20Pro%20-%202026-06-19%20at%2022.57.33.png" width="200" /></td>
    <td><img src="https://github.com/carrington-manyuchi/ManicaChunksOnline/blob/aa4da4c404d7b4efed0cfcfbbaba8ada3e1756d3/Simulator%20Screenshot%20-%20iPhone%2017%20Pro%20-%202026-06-19%20at%2022.57.46.png" width="200" /></td>
    <td><img src="https://github.com/carrington-manyuchi/ManicaChunksOnline/blob/aa4da4c404d7b4efed0cfcfbbaba8ada3e1756d3/Simulator%20Screenshot%20-%20iPhone%2017%20Pro%20-%202026-06-19%20at%2022.58.13.png" width="200" /></td>
    <td><img src="https://github.com/carrington-manyuchi/ManicaChunksOnline/blob/aa4da4c404d7b4efed0cfcfbbaba8ada3e1756d3/Simulator%20Screenshot%20-%20iPhone%2017%20Pro%20-%202026-06-19%20at%2022.58.32.png" width="200" /></td>
  </tr>
  <tr>
    <td align="center">Welcome</td>
    <td align="center">Sign In</td>
    <td align="center">Validation</td>
    <td align="center">Registration</td>
  </tr>
</table>

## 📱 UI Focus Areas

- **Authentication Flow**: Sign Up, Sign In with comprehensive validation
- **Error Handling**: User-friendly error messages and validation states
- **Reusable Components**: Custom text fields, buttons, and form elements
- **MVVM Architecture**: Clean separation of concerns
- **Protocol-Oriented Programming**: Network abstraction and component protocols

## 🛠️ Technical Skills Demonstrated

### 🏗️ Architectural Patterns
- **MVVM Architecture**: Clean separation of concerns with `ObservableObject` view models
- **Protocol-Oriented Programming**: Network layer abstraction using protocols for testability
- **Singleton Pattern**: Shared view model instances for app-wide state management

### 📡 Networking Layer
- **Robust Network Service**: Built a comprehensive networking layer with:
  - Generic `NetworkServiceCall` protocol supporting CRUD operations
  - Automatic retry mechanism with exponential backoff
  - Graceful error handling with user-friendly messages
  - URLSession abstraction for testability
  
```swift
protocol NetworkServiceCall {
    func post<T: Encodable, U: Decodable>(_ request: T, to path: String) async throws -> U
    func getWithRetry<U: Decodable>(_ path: String, retries: Int) async throws -> U
}
