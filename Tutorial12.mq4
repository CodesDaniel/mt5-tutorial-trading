//+------------------------------------------------------------------+
//|                                                    Tutorial12.mq5 |
//|                                   Copyright 2019, GeneticTrading |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, GeneticTrading"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property  script_show_inputs
#property  strict

void OnStart()
  {
//---
    int a = 10;
    int b = 12;
    
    int c = Addition(a,b);
    
    Alert(" c =" , c);
   
  }
 
 int Addition(int value1, int value2){
    return ( value1+ value2);
 }

//+------------------------------------------------------------------+