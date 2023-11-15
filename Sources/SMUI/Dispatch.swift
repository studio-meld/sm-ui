import Foundation

public func dispatch(
  action: @escaping () -> Void
) {
  DispatchQueue.main
    .async {
      action()
    }
}

public func dispatchAfter(
  milliseconds: Int = 100,
  action: @escaping () -> Void
) {
  DispatchQueue.main
    .asyncAfter(
      deadline: .now() + .milliseconds(milliseconds)
    ) {
      action()
    }
}

public func dispatchAfterInBackground(
  milliseconds: Int = 100,
  action: @escaping () -> Void
) {
  DispatchQueue.global(qos: .background)
    .asyncAfter(
      deadline: .now() + .milliseconds(milliseconds)
    ) {
      action()
    }
}
