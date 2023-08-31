import SwiftUI

struct ZeroVStack<Content>: View where Content : View {
  private var content: Content
  private var alignment: HorizontalAlignment
  
  init(
    _ alignment: HorizontalAlignment = .center,
    @ViewBuilder content: () -> Content
  ) {
    self.alignment = alignment
    self.content = content()
  }
  
  var body: some View {
    VStack(
      alignment: alignment,
      spacing: 0
    ) {
      content
    }
  }
}
