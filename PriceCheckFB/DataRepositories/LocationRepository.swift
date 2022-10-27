// Created by Prof. H in 2022
// Part of the PriceCheckFB project
// Using Swift 5.0
// Qapla'

import Foundation
import Combine
// import Firebase modules here
import FirebaseFirestore
import FirebaseFirestoreSwift


class LocationRepository: ObservableObject {
  // Set up properties here
  private let path: String = "location_scans"
  private let store = Firestore.firestore()
  
  @Published var locations: [Location] = []
  private var cancellables: Set<AnyCancellable> = []
  
  
  init() {
    self.get()
  }

  func get() {
    // Complete this function
    store.collection(path)
      .addSnapshotListener { querySnapshot, error in
        if let error = error {
          print("Error getting locations: \(error.localizedDescription)")
          return
        }
        
        self.locations = querySnapshot?.documents.compactMap { document in
          try? document.data(as: Location.self)
        } ?? []
      }
  }
  
  // MARK: CRUD methods
  func add(_ location: Location) {
    do {
      let newLocation = location
      _ = try store.collection(path).addDocument(from: newLocation)
    } catch {
      fatalError("Unable to add location: \(error.localizedDescription)")
    }
  }
  
  func update(_ location: Location) {
    let locationId = location.id.uuidString
    
    do {
      try store.collection(path).document(locationId).setData(from: location)
    } catch {
      fatalError("Unable to update location: \(error.localizedDescription)")
    }
  }
  
  func remove(_ location: Location) {
    let locationId = location.id.uuidString
    
    store.collection(path).document(locationId).delete { error in
      if let error = error {
        print("Unable to remove location: \(error.localizedDescription)")
      }
    }
  }
}
