package Exiting005_Verification {
	
	import VerificationCases::VerdictKind;
	import Exiting005_Interfaces::*;
	import Exiting005_Data::*;
	import Exiting005_System::System;
	
	verification def TestVerification {
		subject exiting005 : System;
		
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
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
		}
		
		attribute acceptedTraces : Collections::Array {
			attribute trace0 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_1_exit;
				attribute TraceElement2 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement3 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement4 : TraceElement := TraceElement::T3_testEnd;
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