package Event009_Statechart {
	
	import ScalarValues::*;
	import Event009_Interfaces::*;
	import Event009_Data::*;
	
	part def Event009 {
		
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

		attribute eventCounter : Integer := 0;
		
		attribute TRANSITION__TO__waiting : Transition := Transition::T1;
		attribute TRANSITION__FROM__waiting : Transition := Transition::T2;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__FROM__S1_1 : Transition := Transition::T1_2;
		attribute TRANSITION__TO__S1_2 : Transition := Transition::T2_1;
		attribute TRANSITION__FROM__S1_2 : Transition := Transition::T2_2;
		attribute TRANSITION__FROM__S1__TO__invalid : Transition := Transition::T3;
		attribute TRANSITION__FROM__invalid : Transition := Transition::T4;
		attribute TRANSITION__FROM__S1 : Transition := Transition::T5;
		
		//Helper attribute for final transition T5
		attribute regionsFinished : Integer := 0;
		
		exhibit state Event009 {
			entry action {
				assign eventCounter := eventCounter + 1;
				send OutSignal(eventCounter) to T1;
			}
			then waiting;
			
			state waiting;
				accept st : StartSignal via startPort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T2;
				}
				then S1;
			
			state S1 parallel {
				state S1Left {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to T1_1;
					}
					then S1_1;
					
					state S1_1;
						accept cont : ContinueSignal via continuePort
						do action {
							assign eventCounter := eventCounter + 1;
							assign regionsFinished := regionsFinished + 1;
							send OutSignal(eventCounter) to T1_2_effect;
						}
						then S1.S1Left.done;
				}
				
				state S1Right {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to T2_1;
					}
					then S1_2;
					
					state S1_2;
						accept cont : ContinueSignal via continuePort
						do action {
							assign eventCounter := eventCounter + 1;
							assign regionsFinished := regionsFinished + 1;
							send OutSignal(eventCounter) to T2_2_effect;
						}
						then S1.S1Right.done;
				}
			}
				accept pending : PendingSignal via pendingPort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T3_effect;
				}
				then invalid;

				accept general : GeneralSignal via generalPort
				if (regionsFinished >= 2)
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T5_testEnd;
				}
				then done;
			
			state invalid;
				accept general : GeneralSignal via generalPort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T4_testEnd;
				}
				then done;
		}
	}
}