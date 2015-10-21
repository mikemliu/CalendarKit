import Foundation

extension Array {
  mutating func shiftLeft() {
    insert(removeFirst(), atIndex: 0)
  }

  mutating func shiftRight() {
    append(removeFirst())
  }

  // TODO: refactor this function while keeping the interface the same
  mutating func shift(index: Int) {
    if index == 0 {return}
    for _ in 1...abs(index) {
      if index > 0 {
        shiftRight()
      } else {
        shiftLeft()
      }
    }
  }
}
