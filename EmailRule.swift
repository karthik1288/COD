
import Foundation

class EmailRule: Rule {
    
    private let REGEX: String
    
    init(){
        self.REGEX = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
    }
    
    init(regex:String){
        REGEX = regex
    }
    
    func validate(value: String) -> Bool {
        //return NSPredicate(format: "SELF MATCHES %@", self.REGEX).evaluateWithObject(value)
    return true
    }
    
    func errorMessage() -> String {
        return "Must be a valid email address"
    }
}