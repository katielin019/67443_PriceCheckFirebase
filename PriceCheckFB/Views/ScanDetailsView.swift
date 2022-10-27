// Created by Prof. H in 2022
// Part of the PriceCheckFB project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct ScanDetailsView: View {
  var scan: PriceScan
  
  var body: some View {
    VStack {
      Text(scan.item)
        .font(.title2)
        .fontWeight(.black)
        .padding([.top], 40)
      Text("As of:  \(scan.onDate())")
        .font(.headline)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .foregroundColor(.secondary)
        .padding(5)
      Text("Price: \(Helper.asCurrency(scan.price))")
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .padding(15)
    }.navigationBarTitle(Text("Scan Details"), displayMode: .inline)
    Spacer()
  }
}

struct ScanDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      ScanDetailsView(scan: PriceScan.example)
    }
  }
}
