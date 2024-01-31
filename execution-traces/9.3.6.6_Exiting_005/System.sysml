package Exiting005_System {
	
	import Exiting005_Interfaces::*;
	import Exiting005_Statechart::*;
	
	part def System {
		port startPort : Start;
		port continuePort : Continue;
		port pendingPort : Pending;
		port generalPort : General;
		
		port S2_1_exit : Trace;
		port S1_1_exit : Trace;
		port S1_exit : Trace;
		port T2_2_effect : Trace;
		port T3_testEnd : Trace;
		
		part statechart : Exiting005;
		
		bind statechart.startPort = startPort;
		bind statechart.continuePort = continuePort;
		bind statechart.pendingPort = pendingPort;
		bind statechart.generalPort = generalPort;
		bind statechart.S1_exit = S1_exit;
		bind statechart.S1_1_exit = S1_1_exit;
		bind statechart.S2_1_exit = S2_1_exit;
		bind statechart.T2_2_effect = T2_2_effect;
		bind statechart.T3_testEnd = T3_testEnd;
	}
}