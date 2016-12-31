tests
testStart
	|string|
	string:= 'message Outer {                
  		message MiddleAA { 
    		message Inner {   
      			required int64 ival = 1;
      			optional bool  booly = 2;
    		}
  		}
  		message MiddleBB {  
   			message Inner {   
    		   required int32 ival = 1;
      			optional bool  booly = 2;
    		}
  		}
	}'.
	
	self parse:string rule:#start.
	self assert: result children first name equals:'message Outer'.
	self assert: result children first children first children first name equals:'message MiddleAA'.
	self assert: result children first children first children first children first children first 		name equals:'message Inner'.
	self assert: result children first children first children second name equals:'message MiddleBB'.
	self assert: result children first children first children second children first children first 		name equals:'message Inner'.