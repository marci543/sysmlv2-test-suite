package {
	
	import Event019E_Verification::*;
	import VerificationCases::*;
	import Event019E_System::*;
	
	verification event019E : TestVerification {
		
		message _0_generalPort_GeneralSignal_ of GeneralSignal;
		message _1_T2_OutInteger_1 of OutInteger;
		message _2_T2_1_OutInteger_2 of OutInteger;
		message _3_T2_1_1_OutInteger_3 of OutInteger;
		message _4_S2_1_1_entry_OutBoolean_4_false of OutBoolean;
		message _5_T1_1_OutInteger_5 of OutInteger;
		message _6_S1_1_entry_OutBoolean_6_true of OutBoolean;
		
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
				event _2_T2_1_OutInteger_2::target;
				event _3_T2_1_1_OutInteger_3::target;
				event _4_S2_1_1_entry_OutBoolean_4_false::target;
				event _5_T1_1_OutInteger_5::target;
				event _6_S1_1_entry_OutBoolean_6_true::target;
				:>> statechart {
					exhibit Event019E.S1;
					exhibit Event019E.S1.S1Left;
					exhibit Event019E.S1.S1Right;
					exhibit Event019E.S1.S1Left.S1_1;
					exhibit Event019E.S1.S1Right.S2_1;
					exhibit Event019E.S1.S1Right.S2_1.S2_1_1;
					:>> eventCounter = 6;
					:>> outt = true;
					:>> s11finished = true;
					:>> s211finished = true;
					:>> s21finished = false;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
