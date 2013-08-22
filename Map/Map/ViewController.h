//
//  ViewController.h
//  Map
//
//  Created by Michael on 8/21/13.
//  Copyright (c) 2013 GivingTree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
// MKMapViewDelegate allows us to recieve method calls from the object we set delegation on.

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
