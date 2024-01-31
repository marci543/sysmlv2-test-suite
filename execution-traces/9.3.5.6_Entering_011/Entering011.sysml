package Entering011_Statechart {
	
	import ScalarValues::*;
	import Entering011_Interfaces::*;
	import Entering011_Data::*;
	
	part def Entering011 {
		
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
		
		attribute eventCounter : Integer := 0;
		
		attribute TRANSITION__TO__waiting : Transition := Transition::T1;
		attribute TRANSITION__FROM__waiting : Transition := Transition::T2;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__FROM__S1_1 : Transition := Transition::T1_2;
		attribute TRANSITION__TO__S1_2 : Transition := Transition::T2_1;
		attribute TRANSITION__FROM__S1_2 : Transition := Transition::T2_2;
		attribute TRANSITION__FROM__S1 : Transition := Transition::T3;

		//Helper attributes for final transitions T1.2, T2.2
		attribute s11finished : Boolean := false;
		attribute s12finished : Boolean := false;
		
		exhibit state Entering011 {
			entry action {
				assign eventCounter := eventCounter + 1;
				send OutSignal(eventCounter) to T1;
			}
			then waiting;
			
			state waiting;
				accept start : StartSignal via startPort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T2;
				}
				then S1;
			
			state S1 parallel {
				entry action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to S1_entry;
				}
				
				state S1Left {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to T1_1_effect;
					}
					then S1_1;
					
					state S1_1 {
						entry action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to S1_1_entry;
						}
					}
						accept general : GeneralSignal via generalPort
						if (s11finished)
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T1_2;
							assign s11finished := true;
						}
						then done;
				}
				
				state S1Right {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to T2_1_effect;
					}
					then S1_2;
					
					state S1_2 {
						entry action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to S1_2_entry;
							assign s12finished := true;
						}
					}
						accept general : GeneralSignal via generalPort
						if (s12finished)
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T2_2;
						}
						then done;
				}
			}
				accept continue : ContinueSignal via continuePort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T3_testEnd;
				}
				then done;
		}
	}
}