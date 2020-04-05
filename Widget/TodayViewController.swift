import UIKit
import NotificationCenter
import SwiftUI

// https://medium.com/@code_cookies/swiftui-embed-swiftui-view-into-the-storyboard-a6fc96e7a0a1

struct WidgetView: View {
    var body: some View {
        Text("TODO: add a Clock here")
    }
}

class TodayViewController: UIViewController, NCWidgetProviding {
    @IBSegueAction func addSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        print("HAhahaha")
        let viewController = UIHostingController(coder: coder, rootView: WidgetView())
        viewController?.view.backgroundColor = .clear
        return viewController
    }
}
