package {
	
	import Event009_Verification::*;
	import VerificationCases::*;
	import Event009_System::*;
	
	verification event009 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_T2_OutSignal_1 of OutSignal;
		message _2_T1_1_OutSignal_2 of OutSignal;
		message _3_T2_1_OutSignal_3 of OutSignal;
		message _4_continuePort_ContinueSignal_ of ContinueSignal;
		message _5_T1_2_effect_OutSignal_4 of OutSignal;
		message _6_T2_2_effect_OutSignal_5 of OutSignal;
		message _7_generalPort_GeneralSignal_ of GeneralSignal;
		message _8_T5_testEnd_OutSignal_6 of OutSignal;
		
		subject :>> event009 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Event009.waiting;
					:>> eventCounter = 0;
					:>> regionsFinished = 0;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : System {
				event _1_T2_OutSignal_1::target;
				event _2_T1_1_OutSignal_2::target;
				event _3_T2_1_OutSignal_3::target;
				:>> statechart {
					exhibit Event009.S1;
					exhibit Event009.S1.S1Left;
					exhibit Event009.S1.S1Right;
					exhibit Event009.S1.S1Left.S1_1;
					exhibit Event009.S1.S1Right.S1_2;
					:>> eventCounter = 3;
					:>> regionsFinished = 0;
				}
			} then 
			event _4_continuePort_ContinueSignal_::source; then
			timeslice state2 : System {
				event _5_T1_2_effect_OutSignal_4::target;
				event _6_T2_2_effect_OutSignal_5::target;
				:>> statechart {
					exhibit Event009.S1;
					exhibit Event009.S1.S1Left;
					exhibit Event009.S1.S1Right;
					exhibit Event009.S1.S1Left.done;
					exhibit Event009.S1.S1Right.done;
					:>> eventCounter = 5;
					:>> regionsFinished = 2;
				}
			} then 
			event _7_generalPort_GeneralSignal_::source; then
			timeslice state3 : System {
				event _8_T5_testEnd_OutSignal_6::target;
				:>> statechart {
					exhibit Event009.done;
					:>> eventCounter = 6;
					:>> regionsFinished = 2;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
