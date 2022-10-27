// Created by Prof. H in 2022
// Part of the PriceCheckFB project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct ScanRowView: View {
  var scan: PriceScan
  
  var body: some View {
    NavigationLink(
      destination: ScanDetailsView(scan: scan),
      label: {
        HStack(alignment: .bottom, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
          Text(scan.item)
          Spacer()
          Text(Helper.asCurrency(scan.price))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }).padding()
      })
  }
}

struct ScanRowView_Previews: PreviewProvider {
  static var previews: some View {
    ScanRowView(scan: PriceScan.example)
  }
}
