enum checkYourCodeError: Error {
    case somethingBrokeInYourCode_brother
}

func foo(_ a: Int,_ b: Int) throws -> Void {
    if b < 10 {
        throw checkYourCodeError.somethingBrokeInYourCode_brother
    }
}


do {
  try foo(1, 0)
} catch let erroraagaya as checkYourCodeError  {
    print(erroraagaya)
    print("Hello World!")
}




