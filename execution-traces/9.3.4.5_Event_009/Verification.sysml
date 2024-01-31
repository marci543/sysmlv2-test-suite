package Event009_Verification {
	
	import VerificationCases::VerdictKind;
	import Event009_Interfaces::*;
	import Event009_Data::*;
	import Event009_System::System;
	
	verification def TestVerification {
		subject event009 : System;

		attribute expectedEvents : Collections::Array {
			attribute event1 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "waiting";
				}
				attribute eventName : Event := Event::in_StartSignal;
			}
			
			attribute event2 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "S1";
					attribute state2 := "S1_1";
					attribute state3 := "S1_2";
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
			
			// Will not fire after Continue
			/*attribute event3 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "S1";
					attribute state2 := "S1_1";
					attribute state3 := "S1_2";
				}
				attribute eventName : Event := Event::in_PendingSignal;
			}*/
		}

		attribute acceptedTraces : Collections::Array {
			attribute trace0 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T5_testEnd;
			}
			attribute trace1 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T5_testEnd;
			}
		}
		
		objective Test {
			verify requirement {
				require constraint Guard {
					event009.statechart.regionsFinished >= 2
				}
			}
		}
		
		return verdict : VerdictKind;
	}
}