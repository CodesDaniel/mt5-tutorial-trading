//+------------------------------------------------------------------+
//|                                                    Tutorial5.mq5 |
//|                                   Copyright 2019, GeneticTrading |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, GeneticTrading"
#property link      ""
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
    //the whole idea of this scrip is to explian the while  loop 
    
    Alert("stat of progrem ");
     int counter =1 ; //the counter 
     
     while(counter <3 ){   // the loop condition
     
      Alert(counter);
        counter++;
     }
     
     Alert(" tghe loop has finished");
       
  
  }
//+------------------------------------------------------------------+
