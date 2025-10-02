import Foundation

extension NSRecursiveLock {
  @inlinable @discardableResult
  func combineSync<R>(operation: () -> R) -> R {
    self.lock()
    defer { self.unlock() }
    return operation()
  }
}
