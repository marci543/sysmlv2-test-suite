package {
	
	import Entering010_Verification::*;
	import VerificationCases::*;
	import Entering010_System::*;
	
	verification entering010 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_T2_OutSignal_1 of OutSignal;
		message _2_S1_entry_OutSignal_2 of OutSignal;
		message _3_T2_1_effect_OutSignal_3 of OutSignal;
		message _4_S2_1_entry_OutSignal_4 of OutSignal;
		message _5_T1_1_effect_OutSignal_5 of OutSignal;
		message _6_S1_1_entry_OutSignal_6 of OutSignal;
		message _7_generalPort_GeneralSignal_ of GeneralSignal;
		
		subject :>> entering010 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Entering010.wait;
					:>> eventCounter = 0;
					:>> s11finished = false;
					:>> s21finished = false;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : System {
				event _1_T2_OutSignal_1::target;
				event _2_S1_entry_OutSignal_2::target;
				event _3_T2_1_effect_OutSignal_3::target;
				event _4_S2_1_entry_OutSignal_4::target;
				event _5_T1_1_effect_OutSignal_5::target;
				event _6_S1_1_entry_OutSignal_6::target;
				:>> statechart {
					exhibit Entering010.S1;
					exhibit Entering010.S1.S1Left;
					exhibit Entering010.S1.S1Right;
					exhibit Entering010.S1.S1Left.S1_1;
					exhibit Entering010.S1.S1Right.S2_1;
					:>> eventCounter = 6;
					:>> s11finished = true;
					:>> s21finished = true;
				}
			} then 
			event _7_generalPort_GeneralSignal_::source; then
			timeslice state2 : System {
				:>> statechart {
					exhibit Entering010.S1;
					exhibit Entering010.S1.S1Left;
					exhibit Entering010.S1.S1Right;
					exhibit Entering010.S1.S1Left.done;
					exhibit Entering010.S1.S1Right.done;
					:>> eventCounter = 8;
					:>> s11finished = true;
					:>> s21finished = true;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
