//
//  View+isHidden.swift
//  CookieConsentSample
//
//  Created by Andreas Reuter on 22.05.22.
//

import SwiftUI

extension View {
  @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
    if hidden {
      if !remove {
        self.hidden()
      }
    } else {
      self
    }
  }
}
