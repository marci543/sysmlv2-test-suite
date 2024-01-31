package Event016B_System {
	
	import Event016B_Interfaces::*;
	import Event016B_Statechart::*;
	
	part def Event016B_System {
		port startPort : Start;
		port continuePort : Continue;
		
		port S1_exit : Trace;
		port S1_2_exit : Trace;
		port S2_1_exit : Trace;
		port T1_2_effect : Trace;
		port T1_3_effect : Trace;
		port T2_1_2_effect : Trace;
		port T2_2_2_effect : Trace;
		port T2_2_effect : Trace;
		port T2_3_effect : Trace;
		port T2_4_effect : Trace;
		port T1 : Trace;
		port T2 : Trace;
		port T1_1 : Trace;
		port T2_1 : Trace;
		port T2_1_1 : Trace;
		port T2_2_1 : Trace;
		port T3_testEnd : Trace;
		
		part statechart : Event016B_Statechart;
		
		bind statechart.startPort = startPort;
		bind statechart.continuePort = continuePort;

		bind statechart.S1_exit = S1_exit;
		bind statechart.S1_2_exit = S1_2_exit;
		bind statechart.S2_1_exit = S2_1_exit;
		bind statechart.T1_2_effect = T1_2_effect;
		bind statechart.T1_3_effect = T1_3_effect;
		bind statechart.T2_1_2_effect = T2_1_2_effect;
		bind statechart.T2_2_2_effect = T2_2_2_effect;
		bind statechart.T2_2_effect = T2_2_effect;
		bind statechart.T2_3_effect = T2_3_effect;
		bind statechart.T2_4_effect = T2_4_effect;
		bind statechart.T1 = T1;
		bind statechart.T2 = T2;
		bind statechart.T1_1 = T1_1;
		bind statechart.T2_1 = T2_1;
		bind statechart.T2_1_1 = T2_1_1;
		bind statechart.T2_2_1 = T2_2_1;
		bind statechart.T3_testEnd = T3_testEnd;
	}
}