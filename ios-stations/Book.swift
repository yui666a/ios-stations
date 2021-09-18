//
//  Book.swift
//  ios-stations
//
import Foundation

/**
 クラスは値が参照型　　同じインスタンスを用いて異なる変数に値を代入すると，どちらも同じになってしまう
 構造体は値型　　　　　同じようにやっても異なる値を保持できる
 */
//struct Book {

struct Book: Decodable {
    var id: String?
    var title: String?
    var url: String?
    var detail: String?
    var review: String?
    var reviewer: String?
}

//    private enum RootKeys: String, CodingKey {
//        case items
//        case totalCount = "total_count"
//    }
//
//    private enum ItemsKeys: String, CodingKey {
//        case id
//        case title
//        case message
//        case url
//        case detail
//        case review
//        case reviewer
//    }
//
//    var books: [Book]?
//    var totalCount: Int = 0
//}



//extension Book: Decodable {
//
//    init(from decoder: Decoder) throws {
//        self.books = []
//        let root = try decoder.container(keyedBy: RootKeys.self)
//        var items = try root.nestedUnkeyedContainer(forKey: .items)
//
//        while !items.isAtEnd {
//            let container = try items.nestedContainer(keyedBy: ItemsKeys.self)
//            var content = Book()
//            content.id = try container.decode(String.self, forKey: .id)
//            content.title = try container.decode(String.self, forKey: .title)
//            content.url = try container.decode(String.self, forKey: .url)
//            content.detail = try container.decode(String.self, forKey: .detail)
//            content.review = try container.decode(String.self, forKey: .review)
//            content.reviewer = try container.decode(String.self, forKey: .reviewer)
//            self.books?.append(content)
//        }
//        totalCount = try root.decode(Int.self, forKey: .totalCount)
//    }
//}
