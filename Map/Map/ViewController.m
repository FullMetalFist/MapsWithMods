//
//  ViewController.m
//  Map
//
//  Created by Michael on 8/21/13.
//  Copyright (c) 2013 GivingTree. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>

#define SPAN_VALUE 0.20f

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // all these options give you more control or customization for the mapView
    // i wonder if (IBAction) function still applies in this mode, and how
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    // MKMapView - instance created         initWithFrame- create it to be as big as a Rect
    // *mapView - MKMapView object          CGRectMake(start at upper left to lower right(x,y,x+,y+)
    [mapView setMapType: 0]; // 0 - standard, 1 - satellite, 2 - hybrid
    [mapView setZoomEnabled:YES]; // toggleable
    
    [mapView setScrollEnabled:YES]; // toggleable
    [mapView setShowsUserLocation:YES]; // tobbleable
    [mapView setShouldGroupAccessibilityChildren:YES]; // i don't even know what this does and its toggleable
    
    [self.view addSubview:mapView]; // must add mapView as Subview
    
    MKCoordinateRegion region;
    
    CLLocationCoordinate2D center;
    
    MKCoordinateSpan span;
    span.latitudeDelta = SPAN_VALUE;
    span.longitudeDelta = SPAN_VALUE;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
