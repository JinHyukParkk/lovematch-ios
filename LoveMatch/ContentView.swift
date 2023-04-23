//
//  ContentView.swift
//  LoveMatch
//
//  Created by hyuk on 2023/04/02.
//

import SwiftUI
import WebKit


struct ContentView: View {
    // WKWebView 인스턴스 생성
    var webView = WKWebView()
    
    var body: some View {
        // WebView를 SwiftUI View에 포함시킴
        WebView(request: URLRequest(url: URL(string: "http://www.lovematch.co.kr/lovematch/home.do")!))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
    }
}

// SwiftUI View를 생성하는 WebView 구조체
struct WebView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

// TODO:: info plist 웹뷰 접근 도메인 관련해서 명확하게 작성해야 함. 참고 : https://inuplace.tistory.com/1222
