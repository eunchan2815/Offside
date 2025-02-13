//
//  SafariWebView.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//


import Foundation
import SwiftUI
import SafariServices

//UIViewControllerRepresentable UIViewController 연결가능하게 하는 프로토콜
struct SafariWebView : UIViewControllerRepresentable{
    var siteURL : String
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SFSafariViewController(url: URL(string:siteURL) ?? URL(string: "https://developer.apple.com/")!)         
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
