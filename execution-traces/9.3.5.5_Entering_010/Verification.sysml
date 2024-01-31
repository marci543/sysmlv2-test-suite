package Entering010_Verification {
	
	import VerificationCases::VerdictKind;
	import Entering010_Interfaces::*;
	import Entering010_Data::*;
	import Entering010_System::System;
	import ScalarValues::*;
	
	verification def TestVerification {
		subject entering010 : System;
		
		attribute expectedEvents : Collections::Array {
			attribute event1 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "wait";
				}
				attribute eventName : Event := Event::in_StartSignal;
			}
		}
		
		attribute acceptedTraces : Collections::Array {
			attribute trace0 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::S2_1_entry;
				attribute TraceElement4 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement5 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace1 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_entry;
				attribute TraceElement5 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace2 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_entry;
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