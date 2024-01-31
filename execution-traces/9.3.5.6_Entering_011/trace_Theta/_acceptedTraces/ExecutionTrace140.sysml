package {
	
	import Entering011_Verification::*;
	import VerificationCases::*;
	import Entering011_System::*;
	
	verification entering011 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_T2_OutSignal_1 of OutSignal;
		message _2_S1_entry_OutSignal_2 of OutSignal;
		message _3_T2_1_effect_OutSignal_3 of OutSignal;
		message _4_S1_2_entry_OutSignal_4 of OutSignal;
		message _5_T1_1_effect_OutSignal_5 of OutSignal;
		message _6_S1_1_entry_OutSignal_6 of OutSignal;
		message _7_continuePort_ContinueSignal_ of ContinueSignal;
		message _8_T3_testEnd_OutSignal_7 of OutSignal;
		
		subject :>> entering011 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Entering011.waiting;
					:>> eventCounter = 0;
					:>> s11finished = false;
					:>> s12finished = false;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : System {
				event _1_T2_OutSignal_1::target;
				event _2_S1_entry_OutSignal_2::target;
				event _3_T2_1_effect_OutSignal_3::target;
				event _4_S1_2_entry_OutSignal_4::target;
				event _5_T1_1_effect_OutSignal_5::target;
				event _6_S1_1_entry_OutSignal_6::target;
				:>> statechart {
					exhibit Entering011.S1;
					exhibit Entering011.S1.S1Left;
					exhibit Entering011.S1.S1Right;
					exhibit Entering011.S1.S1Left.S1_1;
					exhibit Entering011.S1.S1Right.S1_2;
					:>> eventCounter = 6;
					:>> s11finished = false;
					:>> s12finished = true;
				}
			} then 
			event _7_continuePort_ContinueSignal_::source; then
			timeslice state2 : System {
				event _8_T3_testEnd_OutSignal_7::target;
				:>> statechart {
					exhibit Entering011.done;
					:>> eventCounter = 7;
					:>> s11finished = false;
					:>> s12finished = true;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
