package {
	
	import Exiting005_Verification::*;
	import VerificationCases::*;
	import Exiting005_System::*;
	
	verification exiting005 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_pendingPort_PendingSignal_ of PendingSignal;
		message _2_S2_1_exit_OutSignal_1 of OutSignal;
		message _3_T2_2_effect_OutSignal_2 of OutSignal;
		
		subject :>> exiting005 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Exiting005.wait;
					:>> eventCounter = 0;
					:>> s11finished = false;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : System {
				:>> statechart {
					exhibit Exiting005.S1;
					exhibit Exiting005.S1.S1Left;
					exhibit Exiting005.S1.S1Right;
					exhibit Exiting005.S1.S1Left.S1_1;
					exhibit Exiting005.S1.S1Right.S2_1;
					:>> eventCounter = 0;
					:>> s11finished = false;
				}
			} then 
			event _1_pendingPort_PendingSignal_::source; then
			timeslice state2 : System {
				event _2_S2_1_exit_OutSignal_1::target;
				event _3_T2_2_effect_OutSignal_2::target;
				:>> statechart {
					exhibit Exiting005.S1;
					exhibit Exiting005.S1.S1Left;
					exhibit Exiting005.S1.S1Right;
					exhibit Exiting005.S1.S1Left.S1_1;
					exhibit Exiting005.S1.S1Right.done;
					:>> eventCounter = 2;
					:>> s11finished = false;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
