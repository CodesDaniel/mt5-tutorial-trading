//+------------------------------------------------------------------+
//|                                                    Tutorial13.mq5 |
//|                                   Copyright 2019, GeneticTrading |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, GeneticTrading"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property  script_show_inputs
#property  strict
extern int TakeProfit = 10;
extern int  StopLoss = 10;
void OnStart()
  {
//--- FAil safe programing

  double TakeProfitLevel;
   double StopLossLevel;
  
   TakeProfitLevel = Bid +TakeProfit* Point;
   StopLossLevel =  Bid-StopLoss*Point;
   
    int Ticket=  OrderSend("EURUSD",OP_BUY , 1.0, Ask, 10, StopLossLevel, TakeProfitLevel," my frist order with mt4" );
      
      if( Ticket <0){
        Alert(" Ticket was not Created ");
      }
      else{
         Alert("  Your Ticket is " , Ticket);
      }
     
   
  }
 
 

//+------------------------------------------------------------------+