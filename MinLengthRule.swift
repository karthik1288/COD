
import Foundation


class MinLengthRule : Rule {
    
    private let DEFAULT_MIN_LENGTH: Int
    
    init(){
        DEFAULT_MIN_LENGTH = 3
    }
    
    init(length:Int){
        self.DEFAULT_MIN_LENGTH = length
    }
    
    func validate(value: String) -> Bool {
        if countElements(value) < DEFAULT_MIN_LENGTH {
            return false
        }
        return true
    }
    
    func errorMessage() -> String {
        return "Must be at least \(DEFAULT_MIN_LENGTH) characters long"
    }
}
