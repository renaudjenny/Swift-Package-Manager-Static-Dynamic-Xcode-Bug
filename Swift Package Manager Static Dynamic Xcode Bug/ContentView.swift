import SwiftUI
import SwiftClockUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, Clock!")
            ClockView().padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
