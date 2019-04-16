//+------------------------------------------------------------------+
//|                                                    Tutorial3.mq5 |
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

    //  the whoel idea of this script is to explian boolean operator in metatrader 5 
    
    Alert(3>4);// false
    Alert(4>3); //true
    
    // there are four types of boolean operators
    
    // >=
    // <=
    //!= 
    //==
    //>
    //<
    
    bool  less =  3<4;  //example
    Alert(less);  // display

  }
//+------------------------------------------------------------------+
