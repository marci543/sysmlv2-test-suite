package Exiting001_Statechart {
	
	import ScalarValues::*;
	import Exiting001_Interfaces::*;
	import Exiting001_Data::*;
	
	part def Exiting001_Statechart {
		
		port startPort : Start;
		port continuePort : Continue;
		port generalPort : General;
		
		port S1_exit : Trace;
		port S1_1_exit : Trace;
		port S1_1_1_exit : Trace;
		port S2_1_exit : Trace;
		port T3_testEnd : Trace;
		
		attribute eventCounter : Integer := 0;

		attribute TRANSITION__TO__waiting : Transition := Transition::T1;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__TO__S1_1_1 : Transition := Transition::T1_1_1;
		
		exhibit state Exiting001 {
			entry; then waiting;
			
			state waiting;
			
			state S1 parallel {
				exit action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to S1_exit;
				}
				
				state S1Left {
					entry; then S1_1;
					
					state S1_1 {
						exit action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to S1_1_exit;
						}
						
						entry; then S1_1_1;
						
						state S1_1_1 {
							exit action {
								assign eventCounter := eventCounter + 1;
								send OutSignal(eventCounter) to S1_1_1_exit;
							}
						}
					}
				}
				
				state S1Right {
					entry; then S2_1;
					
					state S2_1 {
						exit action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to S2_1_exit;
						}
					}
				}
			}
			
			transition T2
				first waiting
				accept st : StartSignal via startPort
				then S1;
			
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