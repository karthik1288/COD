

import Foundation
import UIKit

class ValidationError {
    let textField:UITextField
    var errorLabel:UILabel?
    let errorMessage:String
    
    init(textField:UITextField, error:String){
        self.textField = textField
        self.errorMessage = error
    }
    
}