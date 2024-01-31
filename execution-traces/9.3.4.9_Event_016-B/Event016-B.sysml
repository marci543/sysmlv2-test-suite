package Event016B_Statechart {
	
	import ScalarValues::*;
	import Event016B_Interfaces::*;
	import Event016B_Data::*;
	
	part def Event016B_Statechart {
		
		port continuePort : Continue;
		port startPort : Start;
		
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
		
		attribute eventCounter : Integer := 0;

		attribute TRANSITION__TO__wait : Transition := Transition::T1;
		attribute TRANSITION__FROM__wait : Transition := Transition::T2;
		attribute TRANSITION__TO__S1_1 : Transition := Transition::T1_1;
		attribute TRANSITION__FROM__S1_1__TO__S1_2__0 : Transition := Transition::T1_2;
		attribute TRANSITION__FROM__S1_1__TO__S1_2__1 : Transition := Transition::T1_3;
		attribute TRANSITION__TO__S2_1 : Transition := Transition::T2_1;
		attribute TRANSITION__TO__S2_1_1 : Transition := Transition::T2_1_1;
		attribute TRANSITION__TO__S2_2_1 : Transition := Transition::T2_2_1;
		attribute TRANSITION__FROM__S2_1_1 : Transition := Transition::T2_1_2;
		attribute TRANSITION__FROM__S2_2_1 : Transition := Transition::T2_2_2;
		attribute TRANSITION__FROM__S2_1__TO__S2_2__0 : Transition := Transition::T2_2;
		attribute TRANSITION__FROM__S2_1__TO__S2_2__1 : Transition := Transition::T2_3;
		attribute TRANSITION__FROM__S2_1__TO__S2_2__2 : Transition := Transition::T2_4;
		attribute TRANSITION__FROM__S1 : Transition := Transition::T3;
		
		exhibit state Event016B {
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
				then S1;
			
			state S1 parallel {
				exit action {
					assign eventCounter := eventCounter + 1;
					send OutSignal(eventCounter) to S1_exit;
				}
				
				state S1Left {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to T1_1;
					}
					then S1_1;
					
					state S1_1;
						accept continue : ContinueSignal via continuePort
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T1_2_effect;
						}
						then S1_2;

						accept continue : ContinueSignal via continuePort
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T1_3_effect;
						}
						then S1_2;
					
					state S1_2 {
						exit action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to S1_2_exit;
						}
					}
				}
				
				state S1Right {
					entry action {
						assign eventCounter := eventCounter + 1;
						send OutSignal(eventCounter) to T2_1;
					}
					then S2_1;
					
					state S2_1 parallel {
						exit action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to S2_1_exit;
						}
						
						state S2_1Left {
							entry action {
								assign eventCounter := eventCounter + 1;
								send OutSignal(eventCounter) to T2_1_1;
							}
							then S2_1_1;
							
							state S2_1_1;
								accept continue : ContinueSignal via continuePort
								do action {
									assign eventCounter := eventCounter + 1;
									send OutSignal(eventCounter) to T2_1_2_effect;
								}
								then done;
						}
						
						state S2_1Right {
							entry action {
								assign eventCounter := eventCounter + 1;
								send OutSignal(eventCounter) to T2_2_1;
							}
							then S2_2_1;
							
							state S2_2_1;
								accept continue : ContinueSignal via continuePort
								do action {
									assign eventCounter := eventCounter + 1;
									send OutSignal(eventCounter) to T2_2_2_effect;
								}
								then done;
						}
					}
						accept continue : ContinueSignal via continuePort
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T2_2_effect;
						}
						then S2_2;

						accept continue : ContinueSignal via continuePort
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T2_3_effect;
						}
						then S2_2;

						accept continue : ContinueSignal via continuePort
						do action {
							assign eventCounter := eventCounter + 1;
							send OutSignal(eventCounter) to T2_4_effect;
						}
						then S2_2;
					
					state S2_2;
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