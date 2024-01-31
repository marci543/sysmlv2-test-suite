package {
	
	import Event019E_Verification::*;
	import VerificationCases::*;
	import Event019E_System::*;
	
	verification event019E : TestVerification {
		
		message _0_generalPort_GeneralSignal_ of GeneralSignal;
		message _1_T2_OutInteger_1 of OutInteger;
		message _2_T1_1_OutInteger_2 of OutInteger;
		message _3_S1_1_entry_OutBoolean_3_true of OutBoolean;
		message _4_T2_1_OutInteger_4 of OutInteger;
		message _5_T2_1_1_OutInteger_5 of OutInteger;
		message _6_S2_1_1_entry_OutBoolean_6_false of OutBoolean;
		message _7_generalPort_GeneralSignal_ of GeneralSignal;
		message _8_T1_2_OutInteger_7 of OutInteger;
		message _9_T2_1_2_OutInteger_8 of OutInteger;
		message _10_generalPort_GeneralSignal_ of GeneralSignal;
		message _11_T2_2_OutInteger_9 of OutInteger;
		
		subject :>> event019E {
			timeslice state0 : Event019E_System {
				:>> statechart {
					exhibit Event019E.wait;
					:>> eventCounter = 0;
					:>> outt = false;
					:>> s11finished = false;
					:>> s211finished = false;
					:>> s21finished = false;
				}
			} then 
			event _0_generalPort_GeneralSignal_::source; then
			timeslice state1 : Event019E_System {
				event _1_T2_OutInteger_1::target;
				event _2_T1_1_OutInteger_2::target;
				event _3_S1_1_entry_OutBoolean_3_true::target;
				event _4_T2_1_OutInteger_4::target;
				event _5_T2_1_1_OutInteger_5::target;
				event _6_S2_1_1_entry_OutBoolean_6_false::target;
				:>> statechart {
					exhibit Event019E.S1;
					exhibit Event019E.S1.S1Left;
					exhibit Event019E.S1.S1Right;
					exhibit Event019E.S1.S1Left.S1_1;
					exhibit Event019E.S1.S1Right.S2_1;
					exhibit Event019E.S1.S1Right.S2_1.S2_1_1;
					:>> eventCounter = 6;
					:>> outt = false;
					:>> s11finished = true;
					:>> s211finished = true;
					:>> s21finished = false;
				}
			} then 
			event _7_generalPort_GeneralSignal_::source; then
			timeslice state2 : Event019E_System {
				event _8_T1_2_OutInteger_7::target;
				event _9_T2_1_2_OutInteger_8::target;
				:>> statechart {
					exhibit Event019E.S1;
					exhibit Event019E.S1.S1Left;
					exhibit Event019E.S1.S1Right;
					exhibit Event019E.S1.S1Left.done;
					exhibit Event019E.S1.S1Right.S2_1;
					exhibit Event019E.S1.S1Right.S2_1.done;
					:>> eventCounter = 8;
					:>> outt = false;
					:>> s11finished = true;
					:>> s211finished = true;
					:>> s21finished = true;
				}
			} then 
			event _10_generalPort_GeneralSignal_::source; then
			timeslice state3 : Event019E_System {
				event _11_T2_2_OutInteger_9::target;
				:>> statechart {
					exhibit Event019E.S1;
					exhibit Event019E.S1.S1Left;
					exhibit Event019E.S1.S1Right;
					exhibit Event019E.S1.S1Left.done;
					exhibit Event019E.S1.S1Right.done;
					:>> eventCounter = 9;
					:>> outt = false;
					:>> s11finished = true;
					:>> s211finished = true;
					:>> s21finished = true;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
