package Event019E_Statechart {
	
	import ScalarValues::*;
	import Event019E_Interfaces::*;
	import Event019E_Data::*;
	
	part def Event019E {
		
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
		
		attribute orLeft : Boolean := true;
		attribute orRight : Boolean := true;
		// Output value is not computed but assigned directly due to 'and' and 'xor' operations not working properly
		attribute outt : Boolean := false;
		
		attribute eventCounter : Integer := 0;

		attribute TRANSITION__TO__wait : Transition := Transition::T1;
		attribute TRANSITION__FROM__wait : Transition := Transition::T2;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__FROM__S1_1 : Transition := Transition::T1_2;
		attribute TRANSITION__TO__S2_1 : Transition := Transition::T2_1;
		attribute TRANSITION__TO__S2_1_1 : Transition := Transition::T2_1_1;
		attribute TRANSITION__FROM__S2_1_1 : Transition := Transition::T2_1_2;
		attribute TRANSITION__FROM__S2_1 : Transition := Transition::T2_2;
		attribute TRANSITION__FROM__S1 : Transition := Transition::T3;
		
		//Helper attribute for final transition T1.2, T2.1.2, T2.2
		attribute s11finished : Boolean := false;
		attribute s211finished : Boolean := false;
		attribute s21finished : Boolean := false;
		
		exhibit state Event019E {
			entry action {
				assign eventCounter := eventCounter + 1;
				send OutInteger(eventCounter) to T1;
			}
			then wait;
			
			state wait;
				accept general : GeneralSignal via generalPort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutInteger(eventCounter) to T2;
				}
				then S1;
			
			state S1 parallel {
				state S1Left {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutInteger(eventCounter) to T1_1;
					}
					then S1_1;
					
					state S1_1 {
						entry action {
							// outLeft and outRight
							assign outt := true;
							assign eventCounter := eventCounter + 1;
							send OutBoolean(eventCounter, outt) to S1_1_entry;
							assign s11finished := true;
						}
					}
						accept general : GeneralSignal via generalPort
						if (s11finished)
						do action {
							assign eventCounter := eventCounter + 1;
							send OutInteger(eventCounter) to T1_2;
						}
						then done;
				}
				
				state S1Right {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutInteger(eventCounter) to T2_1;
					}
					then S2_1;
					
					state S2_1 {
						entry action {
							assign eventCounter := eventCounter + 1;
							send OutInteger(eventCounter) to T2_1_1;
						}
						then S2_1_1;
						
						state S2_1_1 {
							entry action {
								// outLeft xor outRight
								assign outt := false;
								assign eventCounter := eventCounter + 1;
								send OutBoolean(eventCounter, outt) to S2_1_1_entry;
								assign s211finished := true;
							}
						}
							accept general : GeneralSignal via generalPort
							if (s211finished)
							do action {
								assign eventCounter := eventCounter + 1;
								send OutInteger(eventCounter) to T2_1_2;
								assign s21finished := true;
							}
							then done;
					}
						accept general : GeneralSignal via generalPort
						if (s21finished)
						do action {
							assign eventCounter := eventCounter + 1;
							send OutInteger(eventCounter) to T2_2;
						}
						then done;
				}
			}
				accept continue : ContinueSignal via continuePort
				do action {
					assign eventCounter := eventCounter + 1;
					send OutInteger(eventCounter) to T3_testEnd;
				}
				then done;
		}
	}
}