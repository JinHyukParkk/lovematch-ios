//
//  ViewController.swift
//  LoveMatch
//
//  Created by hyuk on 2023/04/16.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string: "http://www.lovematch.co.kr/lovematch/home.do") // 여기에 원하는 웹사이트 주소를 입력하세요.
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    // 웹뷰가 콘텐츠를 받기 시작할 때 호출되는 메서드입니다.
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("웹뷰가 콘텐츠를 받기 시작했습니다.")
    }

    // 웹뷰가 콘텐츠를 완전히 로드한 후 호출되는 메서드입니다.
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("웹뷰가 콘텐츠를 완전히 로드했습니다.")
    }

    // 웹뷰가 오류를 만났을 때 호출되는 메서드입니다.
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("웹뷰 오류 발생: \(error.localizedDescription)")
    }
}

