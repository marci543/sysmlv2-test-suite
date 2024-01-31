package Exiting003_Verification {
	
	import VerificationCases::VerdictKind;
	import Exiting003_Interfaces::*;
	import Exiting003_Data::*;
	import Exiting003_System::System;
	
	verification def TestVerification {
		subject exiting003 : System;
		
		attribute expectedEvents : Collections::Array {
			attribute event1 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "wait";
				}
				attribute eventName : Event := Event::in_StartSignal;
			}
			attribute event2 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "S1";
					attribute state2 := "S1_1";
					attribute state3 := "S1_1_1";
					attribute state4 := "S1_2_1";
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
		}
		
		attribute acceptedTraces : Collections::Array {
			attribute trace0 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_1_1_exit;
				attribute TraceElement2 : TraceElement := TraceElement::S1_2_1_exit;
				attribute TraceElement3 : TraceElement := TraceElement::S1_1_exit;
				attribute TraceElement4 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace1 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_2_1_exit;
				attribute TraceElement2 : TraceElement := TraceElement::S1_1_1_exit;
				attribute TraceElement3 : TraceElement := TraceElement::S1_1_exit;
				attribute TraceElement4 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T3_testEnd;
			}
		}
		
		objective Test {
			verify requirement {
				require constraint Guard {
					true
				}
			}
		}
		
		return verdict : VerdictKind;
	}
}