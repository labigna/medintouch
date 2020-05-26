//
//  ShowMapView.swift
//  MAP MEDINTOUCH
//
//  Created by Labigna Traoré on 22/05/2020.
//  Copyright © 2020 guims cordelia. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

struct ShowMapView: View {
    
    @State  var title = ""
    @State  var subtitle = ""
    @State var isActiveMap = true
    @State private var recherche : String = ""
    @State private var selectedAnnotation: PointAnnotation?
    @State private var showPracticien = false
    @State var navigationBarIsHidden : Bool = true
    @EnvironmentObject var user : User
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                
                MapView(isActive: $isActiveMap, title: $title, subtitle: $subtitle, selectedAnnotation: $selectedAnnotation, showPracticien: $showPracticien)
                    .edgesIgnoringSafeArea(.vertical)
                
                if selectedAnnotation != nil && selectedAnnotation?.type == "Specialiste"{
                    NavigationLink(destination:ContactDocView(navigationBarIsHidden: self.$navigationBarIsHidden), isActive: self.$showPracticien) {
                        EmptyView()
                    }
                }else{
                    NavigationLink(destination:PharmaView(navigationBarIsHidden: self.$navigationBarIsHidden), isActive: self.$showPracticien) {
                        EmptyView()
                    }
                }
                
                VStack{
                    HStack{// Champ de recherche
                        //finaliser le champ de recherche
                        TextField("🔎Rechercher", text: $recherche)
                            .padding([.top, .leading, .bottom])
                            .background(Color(UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)))
                            .cornerRadius(15)
                    }
                    Spacer()
                }
                
                if self.title != ""{
                    
                    HStack(spacing:12){
                        Image (systemName: "info.circle.fill").font(.largeTitle).foregroundColor(.black)
                        
                        VStack(alignment: .leading, spacing: 15){
                            Text(self.title).font(.body).foregroundColor(.black)
                            Text (self.subtitle).font(.caption).foregroundColor(.gray)
                        }
                        
                    }.padding()
                        .background(Color("color")) // mettre le couleur voulue dans appicon
                        .cornerRadius(15)
                    
                }
                
                if !user.getIdentification()
                {
                    // Identification
                    Rectangle()
                        .foregroundColor(Color.black.opacity(0.7))
                    NavigationLink(destination: LoginView())
                    {
                        VStack{
                            Text("Pour accéder à la carte et pouvoir contacter des spécialistes de la médecine douce,\n veuillez vous identifier ou créer un compte")
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("S'identifier")
                        }.padding()
                            .foregroundColor(.white)
                    }
                }
            }
                .navigationBarTitle("") //this must be empty
                .navigationBarHidden(self.navigationBarIsHidden)
            
        }
        
    }
}


struct ShowMapView_Previews: PreviewProvider {
    static var previews: some View {
        ShowMapView()
    }
}


struct MapView: UIViewRepresentable {
    
    @Binding var isActive: Bool
    @Binding var title : String
    @Binding var subtitle : String
    @Binding var selectedAnnotation: PointAnnotation?
    @Binding var showPracticien: Bool
    
    
    let myDataSource = PointAnnotation.requestMockData()
    let Map = MKMapView()
    let annotation = MKPointAnnotation()
    let locationManager = CLLocationManager()
    let coordinate = CLLocationCoordinate2D(latitude: 43.29, longitude: 5.37)
    
    // s'utilise pour afficher les elements uikit (en fontion du code)sur swiftui
    
    func makeUIView(context: /*Context*/ UIViewRepresentableContext<MapView>) -> MKMapView {
        
        
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
        
        Map.region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 8000, longitudinalMeters: 8000)
        
        
        annotation.coordinate = coordinate
        
        Map.delegate = context.coordinator
        Map.showsUserLocation = true
        Map.addAnnotation(annotation)
        
        return Map
        
    }
    // mise a jour des annoation pour une carte, appel automatique par swiftUI,protocole UIView representable, permet de fair fonctionner UIkit en SWIFTUI
    func updateUIView(_ View: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        View.removeAnnotations(View.annotations)
        let newAnnotations = PointAnnotation.requestMockData()
        View.addAnnotations(newAnnotations)
        
    }
    // protocole UIView representable, permet de fair fonctionner UIkit en SWIFTUI
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
        
    }
    
    class Coordinator: NSObject, MKMapViewDelegate, CLLocationManagerDelegate {
        
        var parent: MapView
        
        init(parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) ->MKAnnotationView? {
            
            guard let annotationType = annotation as? PointAnnotation else {
                return nil
            }
            let identifier = "position"
            var pin = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
            if pin == nil {
                pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "position")
            }
            pin?.canShowCallout = true
            pin?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            pin?.isEnabled = true
            pin?.pinTintColor = annotationType.markerTintColor
            pin?.animatesDrop = true
            
            return pin
        }
        
        
        
        
        
        
        
        //func mapView(_ mapView: MKMapView, annotationView view : MKPinAnnotationView, didChange newState : MKAnnotationView.isActive), fromOldState olState : MKAnnotationView.isActive){
        
        // print(view.annotation?.coordinate.latitude)
        
        func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
            guard let pointAnnotation = view.annotation as? PointAnnotation else {
                return
            }
            
            parent.selectedAnnotation = pointAnnotation
            parent.showPracticien = true
        }
    }
    
}







/* let location = location.last
 let point = MKPointAnnotation()
 
 let georeader = CLGeocoder()
 georeader.reverseGeocodeLocation(location!) { (places, err) in
 
 if err != nil{
 
 print((err?.localizedDescription)!)
 return
 }
 
 let place = places?.first?.locality
 point.title = place
 point.subtitle = "Current"
 point.coordinate = location!.coordinate
 
 */


//   self.parent.MapView.removeAnnotations(self.parent.MapView.annotations)
//self.parent.MapView.addAnnotation(point)

/* CLGeocoder().reverseGeocodeLocation(CLlocation(latitude: view.annotation?.coordinate.latitude)!, longitude:(view.annotation?.coordinate.longitude))), { (places, err) in
 
 
 if err != nil {
 print(err.localizeddescription))
 return
 }
 // self.parent.title = (places?.first?.name ?? places?.first?.postalCode)!
 //        self.parent.subtitle = (places?.first?.locality ?? places?.first.country ?? "none")
 
 // mettre une valeur optionnel
 }
 */

/// Location Manager Delegate



/*let location = locations.last
 let point = MKPointAnnotation()
 
 let georeader = CLGeocoder()
 georeader.reverseGeocodeLocation(location!) { (places, err) in
 
 if err != nil{
 
 print((err?.localizedDescription)!)
 return
 }
 
 let place = places?.first?.locality
 point.title = place
 point.subtitle = "Current"
 point.coordinate = location!.coordinate
 //   self.parent.MapView.removeAnnotations(self.parent.MapView.annotations)
 //self.parent.MapView.addAnnotation(point)*/

//  _ = MKCoordinateRegion(center: location!.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)

//  self.parent.MapView.region = region



/* locationManager.requestAlwaysAuthorization()
 locationManager.requestWhenInUseAuthorization()
 if CLLocationManager.locationServicesEnabled() {
 locationManager.desiredAccuracy = kCLLocationAccuracyBest
 locationManager.startUpdatingLocation()
 }
 
 Map.delegate = context.coordinator
 Map.showsUserLocation = true
 
 
 //  annotations.append(self.prati.loc)
 
 
 
 
 */
// return MapView






//  private func PointAnnotation() {
// MapView.removeAnnotations()
// MapView.addAnnotations()





