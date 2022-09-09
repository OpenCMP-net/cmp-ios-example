//
//  ContentView.swift
//  CookieConsentSample
//
//  Created by Andreas Reuter on 08.05.22.
//

import SwiftUI
import OpenCMP

struct ContentView: View {
  @State var isShowing: Bool = true
  
  var body: some View {
    HStack {
      CookieConsentView(
        acceptOrReject: { cookies in isShowing = false },
        showUi: { isShowing = true },
        hideUi: { isShowing = false }
      )
//        .isHidden(!isShowing)
    }
    .background(Color.green)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
