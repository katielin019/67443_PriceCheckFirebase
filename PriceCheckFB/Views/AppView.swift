// Created by Prof. H in 2022
// Part of the PriceCheckFB project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct AppView: View {
  var body: some View {
    
    TabView {

      ScannerView()
      .tabItem {
          Image(systemName: "barcode")
          Text("Scan Price")
      }

      ScanListView()
      .tabItem {
          Image(systemName: "list.dash")
          Text("Saved Scans")
      }
      
    }
  }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
