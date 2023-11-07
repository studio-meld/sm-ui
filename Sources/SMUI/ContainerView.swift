import SwiftUI

public protocol ContainerView: View {
  associatedtype Content
  init(content: @escaping () -> Content)
}

public extension ContainerView {
  init(@ViewBuilder _ content: @escaping () -> Content) {
    self.init(content: content)
  }
}
