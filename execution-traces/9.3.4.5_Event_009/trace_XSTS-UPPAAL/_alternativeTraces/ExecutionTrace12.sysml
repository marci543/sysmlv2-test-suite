package {
	
	import Event009_Verification::*;
	import VerificationCases::*;
	import Event009_System::*;
	
	verification event009 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_T2_OutSignal_1 of OutSignal;
		message _2_T2_1_OutSignal_2 of OutSignal;
		message _3_T1_1_OutSignal_3 of OutSignal;
		message _4_pendingPort_PendingSignal_ of PendingSignal;
		message _5_T3_effect_OutSignal_4 of OutSignal;
		
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
				event _2_T2_1_OutSignal_2::target;
				event _3_T1_1_OutSignal_3::target;
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
			event _4_pendingPort_PendingSignal_::source; then
			timeslice state2 : System {
				event _5_T3_effect_OutSignal_4::target;
				:>> statechart {
					exhibit Event009.invalid;
					:>> eventCounter = 4;
					:>> regionsFinished = 0;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
