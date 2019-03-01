//
// Created by alex on 01.03.19.
//

import Foundation

class Account {
    var rate: Double = 0.01
    var capital: Double {
        willSet(newCapital) {

            print("Старая сумма вклада: \(self.capital)  Новая сумма: \(newCapital)")
        }
        didSet(oldCapital) {
            print("Сумма вклада увеличена на \(self.capital - oldCapital)")
        }
    }

    static func operate(_ sum: Double) -> Double {
        return sum / 0.1
    }

    var profit: Double {

        get {
            return capital + capital * rate
        }
        set(newProfit) {

            capital = newProfit / (1 + rate)
        }
    }

    init(capital: Double, rate: Double) {

        self.capital = capital
        self.rate = rate
    }
}
