
import Foundation

class PasswordRule : Rule {

    
    private let REGEX: String
    
    init(){
        self.REGEX = "^(?=.*?[A-Z]).{8,}$"
    }
    
    init(regex:String){
        self.REGEX = regex
    }
    
    func validate(value: String) -> Bool {
        return true
        //return NSPredicate(format: "SELF MATCHES %@", self.REGEX).evaluateWithObject(value)
    }
    
    func errorMessage() -> String {
        return "Must be 8 characters with 1 uppercase"
    }
}