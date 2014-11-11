//
//  ViewController.m
//  BorrarObtenerTiendasEncodeadas
//
//  Created by Henry AT on 11/11/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize arregloDatos,tipoFrac,codError,sku, arregloProductos;
@synthesize cadenaEncodeada;
@synthesize arregloxxxx;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    arregloDatos = @[@"datos1",@"datos135",@"datos176",@"datos2",@"datos3",@"datos4",@"datos15"];
    arregloxxxx = [[NSArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


#pragma mark - 
#pragma mark Delegados Tabla:
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.arregloxxxx count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *dic1 = [self.arregloxxxx objectAtIndex:indexPath.row];
    cell.textLabel.text = dic1[@"nombre"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{

}






-(void) execute {
    
//    NSString *URLString = @"http://apps4s.com/serviceWeb/json/tiendas.json";
    NSString *URLString = @"http://mobilesod1.cloudapp.net/sodimac/api/get/tienda/json?v=145";
    
    NSString *escapedURLString = [URLString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:[NSURL URLWithString: escapedURLString]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                
                NSLog(@"error: %@", error);

                self.cadenaEncodeada = [[NSString alloc] initWithData:data encoding:NSISOLatin1StringEncoding];
//    NSArray *array = [NSJSONSerialization JSONObjectWithData:[self.cadenaEncodeada dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&error];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:[self.cadenaEncodeada dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];

                self.arregloxxxx = array;
                [self.laTabla reloadData];

//                id json = [NSJSONSerialization JSONObjectWithData:data001 options:0 error:nil];
                NSLog(@"1.-====>%@",array);
                
                
                

            }] resume];
     

    
    
    NSLog(@"= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ");
    

//    NSString *jsonString = @"{\"ID\":{\"Content\":268,\"type\":\"text\"},\"ContractTemplateID\":{\"Content\":65,\"type\":\"text\"}}";
//    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
//    id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//    NSLog(@"))))))))%@",[json objectForKey:@"ID"]);


//    NSData *data002 = [self.cadenaEncodeada dataUsingEncoding:NSISOLatin1StringEncoding];
    
//    id json222 = [NSJSONSerialization JSONObjectWithData:data222 options:0 error:nil];
//    NSLog(@"))))))))%@",json222);
    
    
    // = = = = = = = = =
//    NSError *err = nil;
//    NSArray *array = [NSJSONSerialization JSONObjectWithData:[self.cadenaEncodeada dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&err];
//    NSDictionary *dictionary = [array objectAtIndex:0];
//    NSString *test = [dictionary objectForKey:@"ID"];
//    NSLog(@"Test is %@",test);
    
    
}





- (IBAction)btnEjecutar:(id)sender {
    [self execute];
}
@end
