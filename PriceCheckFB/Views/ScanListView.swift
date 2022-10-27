// Created by Prof. H in 2022
// Part of the PriceCheckFB project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct ScanListView: View {
  @ObservedObject var locationRepository = LocationRepository()
  
  var body: some View {
    
    let locationScans = locationRepository.locations.sorted()
  
    NavigationView {
      List {
        ForEach(locationScans) { location in
          SectionView(location: location)
        }
      }.navigationBarTitle("Scans")
    }
  }
}

struct ScanListView_Previews: PreviewProvider {
  static var previews: some View {
    ScanListView()
  }
}
