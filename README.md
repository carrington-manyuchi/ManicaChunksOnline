# 🛒 ManicaChunksOnline

A modern e-commerce iOS application built with SwiftUI that provides a seamless grocery shopping experience. The app features user authentication, product browsing, category filtering, and a clean, intuitive interface.

## 📱 Features

- **User Authentication**: Secure sign-up and login functionality with validation
- **Product Discovery**: Browse products by categories with search capability
- **Shopping Cart**: Add and manage items in your cart
- **Favorites**: Save products for later purchase
- **Profile Management**: User profile and order history
- **Responsive Design**: Optimized for various iOS devices with adaptive layouts

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
