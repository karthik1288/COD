

import Foundation

protocol Rule {
    func validate(value:String) -> Bool
    func errorMessage() -> String
}
