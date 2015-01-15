//
//  File.m
//  IsPermutation
//
//  Created by Jennifer A Sipila on 1/12/15.
//  Copyright (c) 2015 Jennifer A Sipila. All rights reserved.
//

#import <Foundation/Foundation.h>


NSString* str1 = @"ABCDE";

NSString* str2 = @"AEIOU";



bool isPermutation(NSString* str1, NSString* str2)

{
    NSInteger len1 = str1.length;
    NSInteger len2 = str2.length;
    
    
    if (len1 != len2)
    {
    
        return false;
        
    }
    
    
    bool*Matched = malloc (len2* sizeof(bool));
    
    for (int i = 0; i < len1; i++)
    {
        
        for (int j = 0; j < len2; j ++)
        {
            
            if (Matched [j] == true )
                
               Matched[j] = true;
            
            continue;
            
            
            
            
            
            if (str1[i] == str2[j])
            {
                break;
                
                
            }
            if (j == len2)
                return false;
        }
        
        free(Matched);
        return true;
    }



}

