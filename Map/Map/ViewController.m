//
//  ViewController.m
//  Map
//
//  Created by Michael on 8/21/13.
//  Copyright (c) 2013 GivingTree. All rights reserved.
//

#import "ViewController.h"

/*
 PART TWO - 1/2
// New York
#define NY_LATITUDE 40.754445;
#define NY_LONGITUDE -73.977364;

// Carpinteria
#define CA_LATITUDE 34.3989;
#define CA_LONGITUDE -119.5175;

#define SPAN_VALUE 0.20f;
 */

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapView = _mapView; // = _mapView PART THREE

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
     PART ONE - 1/1
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
    */
    
    /*
     PART TWO - 1/2
    // region
    MKCoordinateRegion region;
    // center
    CLLocationCoordinate2D center;
    center.latitude = NY_LATITUDE;
    center.longitude = NY_LONGITUDE;
    // span
    MKCoordinateSpan span;
    span.latitudeDelta = SPAN_VALUE;
    span.longitudeDelta = SPAN_VALUE;
    
    // assign region to map
    region.center = center;
    region.span = span;
    [mapView setRegion:region animated:YES];
    // timer
    [NSTimer scheduledTimerWithTimeInterval:5.0
                                     target:self
                                   selector:@selector(changeRegion) // region change
                                   userInfo:nil
                                    repeats:NO];
    */
    
    // PART THREE
    [self.mapView.delegate self];
    
    [self.mapView setShowsUserLocation:YES];
    
    
}

// PART THREE
-(void)         mapView:(MKMapView *)mapView
  didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 0.20, 0.20);
    MKCoordinateSpan span = MKCoordinateSpanMake(3, 3);
    [self.mapView setRegion:region animated:YES];
}

/*
 PART TWO - 2/2
- (void)changeRegion
{
    // region
    MKCoordinateRegion region;
    // center
    CLLocationCoordinate2D center;
    center.latitude = CA_LATITUDE;
    center.longitude = CA_LONGITUDE;
    //span
    MKCoordinateSpan span;
    span.latitudeDelta = SPAN_VALUE;
    span.longitudeDelta = SPAN_VALUE;
    
    region.center = center;
    region.span = span;
    [mapView setRegion:region animated:YES];
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
