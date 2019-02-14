import UIKit


class Dater: Formatter {
    var birthday: Date
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
let dateComponent = DateComponents(calendar: .current, year: 1988, month: 12, day: 4, hour: 13, minute: 23)
let dateFormatter = DateFormatter()
dateFormatter.locale = Locale(identifier: "en_US")
print(dateFormatter)


