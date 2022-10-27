// Created by Prof. H in 2022
// Part of the PriceCheckFB project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct SectionView: View {
  let location: Location
  
  var body: some View {
    Section(header: Text(location.name), content: {
      ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
        ScanRowView(scan: scan)
      }
    })
  }
}

struct SectionView_Previews: PreviewProvider {
  static var previews: some View {
    SectionView(location: Location.example)
  }
}
