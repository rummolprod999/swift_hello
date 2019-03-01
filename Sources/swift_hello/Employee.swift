//
// Created by alex on 01.03.19.
//

import Foundation

class UserNew{

    var name: String
    var surname: String

    init(name: String, surname: String){

        self.name = name
        self.surname = surname
    }

    func getFullInfo() -> String{

        return "\(self.name) \(self.surname)"
    }
}

class Employee : UserNew{

    var company: String
    init(name: String, surname: String, company: String){

        self.company = company
        super.init(name: name, surname: surname)
    }
    override func getFullInfo() -> String{

        return "\(self.name) \(self.surname) - \(self.company)"
    }
}
