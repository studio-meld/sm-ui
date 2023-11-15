import SwiftUI

@available(*, deprecated, renamed: "VStack", message: "Not to be used")
public struct ZeroVStack<Content>: View where Content : View {
  private var content: Content
  private var alignment: HorizontalAlignment
  
  public init(
    _ alignment: HorizontalAlignment = .center,
    @ViewBuilder content: () -> Content
  ) {
    self.alignment = alignment
    self.content = content()
  }
  
  public var body: some View {
    VStack(
      alignment: alignment,
      spacing: 0
    ) {
      content
    }
  }
}
