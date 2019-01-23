import UIKit

class MyView: UIView {
    
    var view = UIView()
    var button = UIButton()
    var isDirty: Bool = false
    
    init() {
        var view = UIView()
        var button = UIButton()
        var isDirty: Bool = false
        super.init(frame: .zero)
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tapped() {
        isDirty = true
    }
    
}

