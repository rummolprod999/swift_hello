//
// Created by alex on 01.03.19.
//

import Foundation

struct User {
    var name: String = "Tom"
    var age: Int = 18

    func getInfo() -> String{

        return "Имя: \( name). Возраст: \(age)"
    }
}
