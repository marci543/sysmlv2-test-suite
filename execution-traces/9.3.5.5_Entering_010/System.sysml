package Entering010_System {
	
	import Entering010_Interfaces::*;
	import Entering010_Statechart::*;
	
	part def System {
		port startPort : Start;
		port generalPort : General;
		
		port S1_entry : Trace;
		port S1_1_entry : Trace;
		port S2_1_entry : Trace;
		port T2 : Trace;
		port T1_1_effect : Trace;
		port T2_1_effect : Trace;
		port T3_testEnd : Trace;
		
		part statechart : Entering010;
		
		bind statechart.startPort = startPort;
		bind statechart.generalPort = generalPort;
		bind statechart.S1_entry = S1_entry;
		bind statechart.S1_1_entry = S1_1_entry;
		bind statechart.S2_1_entry = S2_1_entry;
		bind statechart.T2 = T2;
		bind statechart.T1_1_effect = T1_1_effect;
		bind statechart.T2_1_effect = T2_1_effect;
		bind statechart.T3_testEnd = T3_testEnd;
	}
}