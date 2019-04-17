//+------------------------------------------------------------------+
//|                                                    Tutorial9.mq5 |
//|                                   Copyright 2019, GeneticTrading |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, GeneticTrading"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property  script_show_inputs
#property  script_show_confirm
#property  strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
input int TakeProfit = 10;
input int StopLoss = 10;
void OnStart()
  {
//---
  // the whole idea here is to explian if coditions and there use
  // how to get takeprofit and stoploss spots
  
  double TakeProfitLevel;
   double StopLossLevel;
   MqlTick LatestPrice;
    
   SymbolInfoTick(Symbol() ,LatestPrice);
   
   TakeProfitLevel = LatestPrice.bid +TakeProfit*0.00001;
   StopLossLevel = LatestPrice.bid -StopLoss*0.00001;
   
   Alert("TakeProfitLevel  =  ", TakeProfitLevel);
   Alert("StopLossLevel  =  ", StopLossLevel);

  }
//+------------------------------------------------------------------+
