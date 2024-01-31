package Exiting005_Interfaces {
	
	import ScalarValues::*;
	
	item def StartSignal;
	port def Start {
		in item start : StartSignal;
	}
	
	item def ContinueSignal;
	port def Continue {
		in item continue : ContinueSignal;
	}
	
	item def PendingSignal;
	port def Pending {
		in item pending : PendingSignal;
	}
	
	item def GeneralSignal;
	port def General {
		in item general : GeneralSignal;
	}
	
	item def OutSignal {
		attribute counter : Integer;
	}
	port def Trace {
		out item ou : OutSignal;
	}
}