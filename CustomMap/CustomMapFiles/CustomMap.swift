//
//  CustomMap.swift
//  I'm Bored
//
//  Created by Tushar Limaye on 2016/01/27.
//  Copyright © 2016 Winjit. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class CustomMap: MKMapView,MKMapViewDelegate {

    func setMapData(latitude:CLLocationDegrees,longitude:CLLocationDegrees){
        self.delegate = self
        let pinLocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude,longitude)
        let objectAnnotation = CustomAnnotation()
        objectAnnotation.imageName = "pin_ic.png"
        objectAnnotation.coordinate = pinLocation
        self.addAnnotation(objectAnnotation)
        let adjustRegion:MKCoordinateRegion = self.regionThatFits(MKCoordinateRegionMakeWithDistance(pinLocation, 500, 500))
        self.setRegion(adjustRegion, animated: true)
        
        
    }
    
    
    func setMapDataForOtherTimes(latitude:CLLocationDegrees,longitude:CLLocationDegrees){
        self.delegate = self
        let pinLocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude,longitude)
        let objectAnnotation = CustomAnnotation()
        objectAnnotation.imageName = "pin_ic.png"
        objectAnnotation.coordinate = pinLocation
        self.addAnnotation(objectAnnotation)
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        if !(annotation is CustomAnnotation) {
            return nil
        }
        
        let reuseId = "test"
        
        var anView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId)
        if anView == nil {
            anView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            anView!.canShowCallout = true
        }
        else {
            anView!.annotation = annotation
        }
        
        
        let cpa = annotation as! CustomAnnotation
        print(cpa.imageName)
        
        anView!.image = UIImage(named:cpa.imageName!)
        
        return anView
        
    }
    
}
