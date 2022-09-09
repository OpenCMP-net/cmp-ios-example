//
//  CookieConsentView.swift
//  CookieConsentSample
//
//  Created by Andreas Reuter on 14.05.22.
//

import SwiftUI
import OpenCMP
import WebKit

struct CookieConsentView: UIViewControllerRepresentable {
  var acceptOrReject: (_ cookies: ConsentCookies?) -> Void
  
  var showUi: () -> Void
  
  var hideUi: () -> Void
  
  func makeUIViewController(context: Context) -> some UIViewController {
    let uiView = try? OpenCMPView.shared(acceptOrReject: acceptOrReject, showUi: showUi, hideUi: hideUi)
    return (uiView!)
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    
  }
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  internal class Coordinator {
    let cookieConsent: CookieConsentView
    
    init(_ cookieConsent: CookieConsentView) {
      self.cookieConsent = cookieConsent
    }
  }
}
