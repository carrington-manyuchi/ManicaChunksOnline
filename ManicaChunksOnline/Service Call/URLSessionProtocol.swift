//
//  URLSessionProtocol.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import Foundation


// MARK: - Protocol for Testability

protocol URLSessionProtocol {
    func data(for request: URLRequest) async throws -> (Data, URLResponse)
}

// MARK: - URLSession Conformance

extension URLSession: URLSessionProtocol {}
 
