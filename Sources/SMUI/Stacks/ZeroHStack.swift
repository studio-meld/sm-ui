import SwiftUI

public struct ZeroHStack<Content>: View where Content : View {
  private var content: Content
  private var alignment: VerticalAlignment
  
  init(
    _ alignment: VerticalAlignment = .center,
    @ViewBuilder content: () -> Content
  ) {
    self.alignment = alignment
    self.content = content()
  }
  
  public var body: some View {
    HStack(
      alignment: alignment,
      spacing: 0
    ) {
      content
    }
  }
}
