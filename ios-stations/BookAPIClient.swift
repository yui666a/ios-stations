//
//  BookAPIClient.swift
//  ios-stations
//
import Foundation
import Alamofire

protocol BookAPIClientProtocol {
    func fetchBooks(offset: Int, completion: @escaping ([Book]?) -> Void)
}

class BookAPIClient: BookAPIClientProtocol {
    
    private var books: [Book]?
    
    func fetchBooks(offset: Int, completion: @escaping ([Book]?) -> Void) {
        let baseUrl = "https://api-for-missions-and-railways.herokuapp.com/"
//        'https://api-for-missions-and-railways.herokuapp.com/public/books'
        let searchUrl = "\(baseUrl)public/books"
        let parameters: [String: Int] = ["offset": offset]
        let headers: HTTPHeaders = ["Content-Type": "application/json"]

        AF.request(searchUrl, method: .get, parameters: parameters, headers: headers) .responseJSON { response in
            
            guard let data = response.data else {
                return
            }
            do {
//                self.books = try JSONDecoder().decode([Book]?.self, from: data)
                completion(try JSONDecoder().decode([Book]?.self, from: data))
            } catch let error {
                print("Error: \(error)")
            }
        }
    }
    
//    func getBooks(offset: String) -> Book? {
//        let baseUrl = "http://api-for-missions-and-railways.herokuapp.com/"
//        let searchUrl = "\(baseUrl)books/public"
//        let parameters: [String: Any] = ["offset": 0]
//        let headers: HTTPHeaders = ["Content-Type": "application/json"]
// //        AF.request(searchUrl, method: .get, parameters: parameters, encoding: URLEncoding(destination: .queryString), headers: headers).responseJSON { response in
//        AF.request(searchUrl, parameters: parameters).responseJSON { response in
//            guard let data = response.data else {
//                return
//            }
//            do {
//                self.books = try JSONDecoder().decode(Book.self, from: data)
//            } catch let error {
//                print("Error: \(error)")
//            }
//
//        }
//        return self.books
//    }
    
}
