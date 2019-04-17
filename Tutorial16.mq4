//+------------------------------------------------------------------+
//|                                                    Tutorial16.mq5 |
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
  
   TakeProfitLevel = Bid+TakeProfit* Point;
   StopLossLevel =  Bid-StopLoss*Point;
   
   /* 
      The order send function return  ticked if it works
       and return a -1 if it does not work
    */
   
    int Ticket=  OrderSend("EURUSD", OP_BUY , 1.0, Ask, 10, StopLossLevel, TakeProfitLevel," my frist order with mt4" );
      
      if( Ticket <0){
        Alert(" Ticket was not Created ");
      }
      else{
         Alert("  Your Ticket is " , Ticket);
         
         Sleep(5000);
          Alert(" getting order information");
          
           bool res =   OrderSelect(Ticket,SELECT_BY_TICKET);
            
            if( res == True){
               Alert( " Information about the order #  :", Ticket );
               Alert(" Order Symbol :", OrderSymbol());
               Alert( " Order Type", OrderType());
               Alert(" Order Comment",OrderComment());
               Alert(" Order Profit", OrderProfit());
            
            } else
            {
               Alert(" Could Not Find order" , Ticket);
            }
            
         
      }
     
   
  }
 
 

//+------------------------------------------------------------------+