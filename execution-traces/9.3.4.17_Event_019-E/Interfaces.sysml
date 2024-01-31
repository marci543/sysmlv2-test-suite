package Event019E_Interfaces {
	
	import ScalarValues::*;
	
	item def ContinueSignal;
	port def Continue {
		in item continue : ContinueSignal;
	}
	
	item def GeneralSignal;
	port def General {
		in item general : GeneralSignal;
	}
	
	item def OutInteger {
		attribute i : Integer;
	}
	item def OutBoolean {
		attribute i : Integer;
		attribute b : Boolean;
	}
	item def OutString {
		attribute i : Integer;
		attribute s : String;
	}
	port def Trace {
		out item serial : OutInteger;
		out item data : OutBoolean;
		out item payload : OutString;
	}
}