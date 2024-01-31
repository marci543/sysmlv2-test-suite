package Exiting003_System {
	
	import Exiting003_Interfaces::*;
	import Exiting003_Statechart::*;
	
	part def System {
		port startPort : Start;
		port continuePort : Continue;
		port pendingPort : Pending;
		port generalPort : General;
		
		port S1_exit : Trace;
		port S1_1_exit : Trace;
		port S1_1_1_exit : Trace;
		port S1_2_1_exit : Trace;
		port T3_testEnd : Trace;
		
		part statechart : Exiting003;
		
		bind statechart.startPort = startPort;
		bind statechart.continuePort = continuePort;
		bind statechart.pendingPort = pendingPort;
		bind statechart.generalPort = generalPort;
		bind statechart.S1_exit = S1_exit;
		bind statechart.S1_1_exit = S1_1_exit;
		bind statechart.S1_1_1_exit = S1_1_1_exit;
		bind statechart.S1_2_1_exit = S1_2_1_exit;
		bind statechart.T3_testEnd = T3_testEnd;
	}
}