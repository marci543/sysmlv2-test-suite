package Event019E_Verification {
	
	import VerificationCases::VerdictKind;
	import Event019E_Interfaces::*;
	import Event019E_Data::*;
	import Event019E_System::Event019E_System;
	import ScalarValues::*;
	
	verification def TestVerification {
		subject event019E : Event019E_System;
		
		attribute expectedEvents : Collections::Array {
			attribute event1 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "S1";
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
		}

		attribute acceptedTraces : Collections::Array {
			attribute trace0 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::S2_1_1_entry;
				attribute TraceElement3 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace1 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S2_1_1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement3 : TraceElement := TraceElement::T3_testEnd;
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