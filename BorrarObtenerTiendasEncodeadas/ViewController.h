//
//  ViewController.h
//  BorrarObtenerTiendasEncodeadas
//
//  Created by Henry AT on 11/11/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Producto.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, strong) NSArray * arregloDatos;
@property (nonatomic, strong) NSArray * arregloProductos;

@property (nonatomic, retain) Producto *currentProducto;

@property (retain,nonatomic) NSString *tipoFrac,*codError,*sku;


- (IBAction)btnEjecutar:(id)sender;
-(void) execute;


@property(nonatomic, strong) NSString * cadenaEncodeada;
@property (nonatomic, strong) NSArray * arregloxxxx;

@property (weak, nonatomic) IBOutlet UITableView *laTabla;



@end

