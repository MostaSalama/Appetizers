//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import Foundation
import Alamofire

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizersURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizer (completed: @escaping (Result<[Appetizer] , APError>)-> Void) {
        guard let url = URL(string: appetizersURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let request = AF.request(url)
        request.responseDecodable(of: AppetizersResponse.self) { response in
                switch response.result {
                case .success(let result):
                    completed(.success(result.request))
                case .failure(_):
                    completed(.failure(.invalidURL))
                    
                }
            }
    }
    
    
}
