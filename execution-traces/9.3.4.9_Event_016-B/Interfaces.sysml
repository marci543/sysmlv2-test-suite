package Event016B_Interfaces {
	
	import Event016B_Data::*;
	import ScalarValues::*;
	
	item def StartSignal;
	port def Start {
		in item start : StartSignal;
	}
	
	item def ContinueSignal;
	port def Continue {
		in item continue : ContinueSignal;
	}
	
	item def OutSignal {
		attribute counter : Integer;
	}
	port def Trace {
		out item ou : OutSignal;
	}
}