package Event016B_Verification {
	
	import VerificationCases::VerdictKind;
	import ScalarValues::*;
	import Event016B_Interfaces::*;
	import Event016B_Data::*;
	import Event016B_System::Event016B_System;
	
	verification def TestVerification {
		subject event016B : Event016B_System;
		
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
					attribute state3 := "S2_1";
					attribute state4 := "S2_1_1";
					attribute state5 := "S2_2_1";
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
			
			attribute event3 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "S1";
					attribute state2 := "S1_2";
					attribute state3 := "S2_1";
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
			
			attribute event4 : Collections::Array {
				attribute stateConfig : Collections::Array {
					attribute state1 := "S1";
					attribute state2 := "S1_2";
					attribute state3 := "S2_2";
				}
				attribute eventName : Event := Event::in_ContinueSignal;
			}
		}
		
		attribute acceptedTraces : Collections::Array {
			attribute trace0 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace1 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace2 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace3 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace4 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace5 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace6 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace7 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace8 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace9 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace10 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace11 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace12 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace13 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace14 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace15 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace16 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace17 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace18 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_3_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace19 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace20 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace21 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace22 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace23 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace24 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace25 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace26 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace27 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace28 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace29 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace30 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace31 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace32 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace33 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_2_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace34 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_3_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
			}
			attribute trace35 : Collections::Array {
				attribute TraceElement1 : TraceElement := TraceElement::T2_2_2_effect;
				attribute TraceElement2 : TraceElement := TraceElement::T2_1_2_effect;
				attribute TraceElement3 : TraceElement := TraceElement::T1_2_effect;
				attribute TraceElement4 : TraceElement := TraceElement::S2_1_exit;
				attribute TraceElement5 : TraceElement := TraceElement::T2_4_effect;
				attribute TraceElement6 : TraceElement := TraceElement::S1_2_exit;
				attribute TraceElement7 : TraceElement := TraceElement::S1_exit;
				attribute TraceElement8 : TraceElement := TraceElement::T3_testEnd;
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