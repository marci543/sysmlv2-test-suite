package Exiting005_Statechart {
	
	import ScalarValues::*;
	import Exiting005_Interfaces::*;
	import Exiting005_Data::*;
	
	part def Exiting005 {
		
		port startPort : Start;
		port continuePort : Continue;
		port pendingPort : Pending;
		port generalPort : General;
		
		port S2_1_exit : Trace;
		port S1_1_exit : Trace;
		port S1_exit : Trace;
		port T2_2_effect : Trace;
		port T3_testEnd : Trace;
		
		attribute eventCounter : Integer := 0;
		
		attribute TRANSITION__TO__wait : Transition := Transition::T1;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__TO__S2_1 : Transition := Transition::T2_1;

		//Helper attribute for final transition T1.2
		attribute s11finished : Boolean := false;
		
		exhibit state Exiting005 {
			entry; then wait;
			
			state wait;
			
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
							assign s11finished := true;
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
				first wait
				accept st : StartSignal via startPort
				then S1;
			
			transition T1_2
				first S1.S1Left.S1_1
				accept general : GeneralSignal via generalPort
				if (s11finished)
				then S1.S1Left.done;
			
			transition T2_2
				first S1.S1Right.S2_1
				accept pending : PendingSignal via pendingPort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T2_2_effect;
				}
				then S1.S1Right.done;
			
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