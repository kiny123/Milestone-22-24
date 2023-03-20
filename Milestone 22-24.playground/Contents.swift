import UIKit
import PlaygroundSupport


let container = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 250))
container.backgroundColor = .darkGray
PlaygroundPage.current.liveView = container


extension UIView {
    func bounceOut(duration: TimeInterval) {
        UIView.animate(withDuration: duration) { [weak self] in
            self?.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        }
    }
}

let view = UIView(frame: CGRect(x: 150, y: 25, width: 200, height: 200))
view.layer.cornerRadius = 100
view.backgroundColor = .red
container.addSubview(view)
view.bounceOut(duration: 1.0)

//

extension Int {
    func times(action: () -> Void) {
        guard self > 0 else { return }
        for _ in 0 ..< self {
            action()
        }
    }
}

5.times {
    print("Hello!")
}

//

extension Array where Element: Comparable {
    mutating func removeItem(item: Element) {
        if let index = self.firstIndex(of: item) {
            self.remove(at: index)
        }
    }
}

var list = ["bird", "cat", "dog", "dog", "fish"]
list.removeItem(item: "dog")
print(list)
