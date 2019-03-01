let x1 = 5
let x2 = 6
let str = "x1 + x2 = \((x1 + x2))"
print(str)
let a = Int("123")
let b = Int("456")
if let aVal = a, let bVal = b {
    print(aVal)
    print(bVal)
} else {
    print("Error")
}

let hello = {
    print("Hello world")
}
hello()
hello()

func action() -> (()->Int){

    var val = 0
    return { () -> Int in
        val = val+1
        return val
    }
}
let inc = action()
print(inc())