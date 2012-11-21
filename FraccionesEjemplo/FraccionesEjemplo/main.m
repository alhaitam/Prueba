//
//  main.m
//  FraccionesEjemplo
//
//  Created by francisco barros on 21/11/12.
//  Copyright (c) 2012 husseinml. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FraccionesEjemplo : NSObject{
    int numerator;
    int denominator;

}

-(void) imprimir;
-(void) setNumerador: (int) n;
-(void) setDenominador: (int) d;

@end

//Seccion de Implementacion

@implementation FraccionesEjemplo

-(void) setNumerador: (int) n {

    numerator = n;

}

-(void) imprimir{

    float decimales;
    decimales=(float)numerator/denominator;
    NSLog(@"%2f", decimales);
    NSLog(@"%i/%i", numerator, denominator);
}



-(void) setDenominador: (int) d{

    denominator=d;

}

@end

//Seccion del programa





int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        FraccionesEjemplo *miFraccion;
        
        //Crear una instancia de la fraccion
        miFraccion=[FraccionesEjemplo alloc];
        miFraccion=[miFraccion init];
        
        //Asignacion de valores de la fraccion
        [miFraccion setNumerador:5];
        [miFraccion setDenominador:50];
        
        //Resultado
        
        NSLog(@"El resultado es:");
        [miFraccion imprimir];
        
    }
    return 0;
}

