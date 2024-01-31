package Entering011_Verification {
	
	import VerificationCases::VerdictKind;
	import Entering011_Interfaces::*;
	import Entering011_Data::*;
	import Entering011_System::System;
	
	verification def TestVerification {
		subject entering011 : System;
		
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
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
		}
		
		attribute acceptedTraces : Collections::Array {
			attribute trace0 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::S1_2_entry;
				attribute TraceElement4 : TraceElement := TraceElement::T1_1_effect;
				attribute TraceElement5 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement6 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace1 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_1_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S1_2_entry;
				attribute TraceElement5 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement6 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace2 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_1_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement5 : TraceElement := TraceElement::S1_2_entry;
				attribute TraceElement6 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace3 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T1_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement5 : TraceElement := TraceElement::S1_2_entry;
				attribute TraceElement6 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace4 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T1_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S1_2_entry;
				attribute TraceElement5 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement6 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace5 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::S1_entry;
				attribute TraceElement2 : TraceElement := TraceElement::T1_1_effect;
				attribute TraceElement3 : TraceElement := TraceElement::S1_1_entry;
				attribute TraceElement4 : TraceElement := TraceElement::T2_1_effect;
				attribute TraceElement5 : TraceElement := TraceElement::S1_2_entry;
				attribute TraceElement6 : TraceElement := TraceElement::T3_testEnd;
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