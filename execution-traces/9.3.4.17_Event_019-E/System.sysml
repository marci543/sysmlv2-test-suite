package Event019E_System {
	
	import Event019E_Interfaces::*;
	import Event019E_Statechart::*;
	
	part def Event019E_System {
		port continuePort : Continue;
		port generalPort : General;
		
		port S1_1_entry : Trace;
		port S2_1_1_entry : Trace;
		port T1 : Trace;
		port T2 : Trace;
		port T1_1 : Trace;
		port T1_2 : Trace;
		port T2_1 : Trace;
		port T2_1_1 : Trace;
		port T2_1_2 : Trace;
		port T2_2 : Trace;
		port T3_testEnd : Trace;
		
		part statechart : Event019E;
		
		bind statechart.continuePort = continuePort;
		bind statechart.generalPort = generalPort;
		bind statechart.S1_1_entry = S1_1_entry;
		bind statechart.S2_1_1_entry = S2_1_1_entry;
		bind statechart.T1 = T1;
		bind statechart.T2 = T2;
		bind statechart.T1_1 = T1_1;
		bind statechart.T1_2 = T1_2;
		bind statechart.T2_1 = T2_1;
		bind statechart.T2_1_1 = T2_1_1;
		bind statechart.T2_1_2 = T2_1_2;
		bind statechart.T2_2 = T2_2;
		bind statechart.T3_testEnd = T3_testEnd;
	}
}