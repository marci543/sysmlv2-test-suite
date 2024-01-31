package Exiting003_Statechart {
	
	import ScalarValues::*;
	import Exiting003_Interfaces::*;
	import Exiting003_Data::*;
	
	part def Exiting003 {
		
		port startPort : Start;
		port continuePort : Continue;
		port pendingPort : Pending;
		port generalPort : General;
		
		port S1_1_1_exit : Trace;
		port S1_2_1_exit : Trace;
		port S1_1_exit : Trace;
		port S1_exit : Trace;
		port T3_testEnd : Trace;
		
		attribute eventCounter : Integer := 0;

		attribute TRANSITION__TO__wait : Transition := Transition::T1;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__TO__S1_1_1 : Transition := Transition::T1_1_1;
		attribute TRANSITION__TO__S1_2_1 : Transition := Transition::T1_2_1;
		
		exhibit state Exiting003 {
			entry; then wait;
			
			state wait;
			
			state S1 {
				entry; then S1_1;
				exit action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to S1_exit;
				}
				
				state S1_1 parallel {
					exit action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to S1_1_exit;
					}
					
					state S1_1Left {
						entry; then S1_1_1;
					
						state S1_1_1 {
							exit action {
								assign eventCounter := eventCounter + 1;
								send OutSignal(eventCounter) to S1_1_1_exit;
							}
						}
					}
				
					state S1_1Right {
						entry; then S1_2_1;
					
						state S1_2_1 {
							exit action {
								assign eventCounter := eventCounter + 1;
								send OutSignal(eventCounter) to S1_2_1_exit;
							}
						}
					}
				}
			}
			
			transition T2
				first wait
				accept st : StartSignal via startPort
				then S1;
			
			transition T1_1_2
				first S1.S1_1.S1_1Left.S1_1_1
				accept pending : PendingSignal via pendingPort
				then S1.S1_1.S1_1Left.done;
			
			transition T1_2_2
				first S1.S1_1.S1_1Right.S1_2_1
				accept pending : PendingSignal via pendingPort
				then S1.S1_1.S1_1Right.done;
			
			transition T3
				first S1
				accept continue : ContinueSignal via continuePort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T3_testEnd;
				}
				then done;
		}
	}
}