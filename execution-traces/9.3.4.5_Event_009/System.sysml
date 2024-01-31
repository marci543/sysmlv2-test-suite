package Event009_System {
	
	import Event009_Interfaces::*;
	import Event009_Statechart::*;
	
	part def System {
		port startPort : Start;
		port continuePort : Continue;
		port pendingPort : Pending;
		port generalPort : General;

		port T1 : Trace;
		port T2 : Trace;
		port T1_1 : Trace;
		port T2_1 : Trace;
		port T1_2_effect : Trace;
		port T2_2_effect : Trace;
		port T3_effect : Trace;
		port T4_testEnd : Trace;
		port T5_testEnd : Trace;
		
		part statechart : Event009;
		
		bind statechart.startPort = startPort;
		bind statechart.continuePort = continuePort;
		bind statechart.pendingPort = pendingPort;
		bind statechart.generalPort = generalPort;
		bind statechart.T1 = T1;
		bind statechart.T2 = T2;
		bind statechart.T1_1 = T1_1;
		bind statechart.T2_1 = T2_1;
		bind statechart.T1_2_effect = T1_2_effect;
		bind statechart.T2_2_effect = T2_2_effect;
		bind statechart.T3_effect = T3_effect;
		bind statechart.T4_testEnd = T4_testEnd;
		bind statechart.T5_testEnd = T5_testEnd;
	}
}