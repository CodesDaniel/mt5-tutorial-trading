//+------------------------------------------------------------------+
//|                                                    Tutorial9.mq5 |
//|                                   Copyright 2019, GeneticTrading |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, GeneticTrading"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property  script_show_inputs
#property  strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
extern int TakeProfit = 10;
extern int StopLoss = 10;
void OnStart()
  {
//---
  // the whole idea here is to send an order
  // how to get takeprofit and stoploss spots
  
  double TakeProfitLevel;
   double StopLossLevel;
  
   TakeProfitLevel = Bid +TakeProfit* Point;
   StopLossLevel =  Bid-StopLoss*Point;
   
   Alert("TakeProfitLevel  =  ", TakeProfitLevel);
   Alert("StopLossLevel  =  ", StopLossLevel);
   
    int Result =  OrderSend("EURUSD",OP_BUY , 1.0, Ask, 10, StopLossLevel, TakeProfitLevel," my frist order with mt4" );
   
  }
//+------------------------------------------------------------------+