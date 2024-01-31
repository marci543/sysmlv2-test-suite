package Entering010_Statechart {
	
	import ScalarValues::*;
	import Entering010_Interfaces::*;
	import Entering010_Data::*;
	
	part def Entering010 {
		
		port startPort : Start;
		port generalPort : General;
		
		port S1_entry : Trace;
		port S1_1_entry : Trace;
		port S2_1_entry : Trace;
		
		port T1 : Trace;
		port T2 : Trace;
		port T1_1_effect : Trace;
		port T2_1_effect : Trace;
		port T1_2 : Trace;
		port T2_2 : Trace;
		port T3_testEnd : Trace;
		
		attribute eventCounter : Integer := 0;
		
		attribute TRANSITION__TO__wait : Transition := Transition::T1;
		attribute TRANSITION__FROM__wait : Transition := Transition::T2;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__FROM__S1_1 : Transition := Transition::T1_2;
		attribute TRANSITION__TO__S2_1 : Transition := Transition::T2_1;
		attribute TRANSITION__FROM__S2_1 : Transition := Transition::T2_2;
		attribute TRANSITION__FROM__S1 : Transition := Transition::T3;

		//Helper attributes for final transitions T1.2, T2.2, T3
		attribute s11finished : Boolean := false;
		attribute s21finished : Boolean := false;
		
		exhibit state Entering010 {
			entry action {
				assign eventCounter := eventCounter + 1;
				send OutSignal(eventCounter) to T1;
			}
			then wait;
			
			state wait;
				accept st : StartSignal via startPort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T2;
				}
				then S1.S1Left.S1_1;
			
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
							assign s11finished := true;
						}
					}
						accept general : GeneralSignal via generalPort
						if (s11finished)
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T1_2;
						}
						then S1.S1Left.done;
				}
				
				state S1Right {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to T2_1_effect;
					} 
					then S2_1;
					
					state S2_1 {
						entry action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to S2_1_entry;
							assign s21finished := true;
						}
					}
						accept general : GeneralSignal via generalPort
						if (s21finished)
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T2_2;
						}
						then S1.S1Right.done;
				}
			}
				accept general : GeneralSignal via generalPort
				if (s11finished and s21finished)
				do action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to T3_testEnd;
				}
				then done;
		}
	}
}