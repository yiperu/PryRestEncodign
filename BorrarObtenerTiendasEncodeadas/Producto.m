//
//  Producto.m
//  ConsultaPreciosSodimac
//
//  Created by real system on 05-10-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Producto.h"

@implementation Producto
@synthesize descripcion,precioVenta,unidadMedida,cantidad,sku,dv,tipoFrac,idFila,marca,imagen,fechaVigencia2;
@synthesize idProducto,videos;
//@synthesize imagenData;

@synthesize idOporCmr,precioInternet,precioCmr;
@synthesize fechaVigencia;

@synthesize lasImagenes;
/*
- (void) dealloc{
    [descripcion release];
    [precioVenta release];
    [unidadMedida release];
    [cantidad release];
    [sku release];
    [tipoFrac release];
    [idFila release];
    
    [super dealloc];
}
 */

@end
