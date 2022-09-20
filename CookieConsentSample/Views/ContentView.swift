//
//  ContentView.swift
//  CookieConsentSample
//
//  Created by Andreas Reuter on 08.05.22.
//

import SwiftUI
import OpenCMP

struct ContentView: View {
  var body: some View {
    HStack {
      CookieConsentView(
        acceptOrReject: { cookies in print(cookies) },
        showUi: {  },
        hideUi: {  }
      )
      
      Button("Show Ui", action: {
        OpenCMPView.shared?.showUiByUser()
      })
    }
    .background(Color.green)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
