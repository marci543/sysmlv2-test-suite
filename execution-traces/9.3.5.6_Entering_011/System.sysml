package Entering011_System {
	
	import Entering011_Interfaces::*;
	import Entering011_Statechart::*;
	
	part def System {
		port startPort : Start;
		port continuePort : Continue;
		port generalPort : General;
		
		port S1_entry : Trace;
		port S1_1_entry : Trace;
		port S1_2_entry : Trace;
		port T1_1_effect : Trace;
		port T2_1_effect : Trace;

		port T1 : Trace;
        port T1_2 : Trace;
        port T2 : Trace;
		port T2_2 : Trace;
		port T3_testEnd : Trace;
		
		part statechart : Entering011;
		
		bind statechart.startPort = startPort;
		bind statechart.continuePort = continuePort;
		bind statechart.generalPort = generalPort;
		bind statechart.S1_entry = S1_entry;
		bind statechart.S1_1_entry = S1_1_entry;
		bind statechart.S1_2_entry = S1_2_entry;
		bind statechart.T1_1_effect = T1_1_effect;
		bind statechart.T2_1_effect = T2_1_effect;
		bind statechart.T1 = T1;
		bind statechart.T1_2 = T1_2;
		bind statechart.T2 = T2;
		bind statechart.T2_2 = T2_2;
		bind statechart.T3_testEnd = T3_testEnd;
	}
}