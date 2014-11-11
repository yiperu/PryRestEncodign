//
//  Producto.h
//  ConsultaPreciosSodimac
//
//  Created by real system on 05-10-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Producto : NSObject{
    NSString *descripcion,*unidadMedida,*sku,*dv,*tipoFrac,*marca,*imagen,*fechaVigencia2;
    NSDecimalNumber *cantidad,*precioVenta,*idFila,*idProducto;
    NSInteger videos;
}

@property (nonatomic,copy) NSString *descripcion,*unidadMedida,*sku,*dv,*tipoFrac,*marca,*imagen,*fechaVigencia2;
@property (nonatomic,copy) NSString *unidadMedInt,*unidadMedCmr;
@property (nonatomic,copy) NSDecimalNumber *cantidad,*precioVenta,*idFila,*idProducto,*idOporCmr;
@property (nonatomic,copy) NSDecimalNumber *precioInternet,*precioCmr;
@property (nonatomic,copy) NSDate *fechaVigencia;

@property (nonatomic) NSInteger videos;
//@property (nonatomic, strong) UIImage *imagenData;

@property (nonatomic, strong) NSArray * lasImagenes;
@end
