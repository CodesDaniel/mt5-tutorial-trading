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
         
           Alert(" modifying Order ......");
           
            Sleep(5000);
           
           bool res = OrderModify(Ticket , 0, Bid - 5*StopLoss * Point,  Bid +5*TakeProfit* Point,0);
           
           if ( res == false){
            Alert(" Could not modify Order");
           }
          else{
               Alert(" Sucessfully  Modified Order" + string(Ticket));
           }
           /*
            delete order function
          bool res =    OrderClose(Ticket, 1.0,Bid, 10);
             /*
              the order sed return  false if it cant cole on order and return true if it  can
             
             if( res == False){
                  Alert(" could not close  the Order" + string(Ticket));
             }
             else{
                     Alert(" Sucessfully closed  close  the Order" + string(Ticket));
             }
            
           */ 
         
      }
     
   
  }
 
 

//+------------------------------------------------------------------+