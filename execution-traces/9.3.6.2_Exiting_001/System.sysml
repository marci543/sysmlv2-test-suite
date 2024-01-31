package Exiting001_System {
	
	import Exiting001_Interfaces::*;
	import Exiting001_Statechart::*;
	
	part def Exiting001_System {
		port startPort : Start;
		port continuePort : Continue;
		port generalPort : General;
		
		port S1_exit : Trace;
		port S1_1_exit : Trace;
		port S1_1_1_exit : Trace;
		port S2_1_exit : Trace;
		port T3_testEnd : Trace;
		
		part statechart : Exiting001_Statechart;
		
		bind statechart.startPort = startPort;
		bind statechart.continuePort = continuePort;
		bind statechart.generalPort = generalPort;
		bind statechart.S1_exit = S1_exit;
		bind statechart.S1_1_exit = S1_1_exit;
		bind statechart.S1_1_1_exit = S1_1_1_exit;
		bind statechart.S2_1_exit = S2_1_exit;
		bind statechart.T3_testEnd = T3_testEnd;
	}
}