package {
	
	import Exiting003_Verification::*;
	import VerificationCases::*;
	import Exiting003_System::*;
	
	verification exiting003 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_pendingPort_PendingSignal_ of PendingSignal;
		message _2_S1_2_1_exit_OutSignal_1 of OutSignal;
		message _3_S1_1_1_exit_OutSignal_2 of OutSignal;
		
		subject :>> exiting003 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Exiting003.wait;
					:>> eventCounter = 0;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : System {
				:>> statechart {
					exhibit Exiting003.S1;
					exhibit Exiting003.S1.S1_1;
					exhibit Exiting003.S1.S1_1.S1_1Left;
					exhibit Exiting003.S1.S1_1.S1_1Right;
					exhibit Exiting003.S1.S1_1.S1_1Left.S1_1_1;
					exhibit Exiting003.S1.S1_1.S1_1Right.S1_2_1;
					:>> eventCounter = 0;
				}
			} then 
			event _1_pendingPort_PendingSignal_::source; then
			timeslice state2 : System {
				event _2_S1_2_1_exit_OutSignal_1::target;
				event _3_S1_1_1_exit_OutSignal_2::target;
				:>> statechart {
					exhibit Exiting003.S1;
					exhibit Exiting003.S1.S1_1;
					exhibit Exiting003.S1.S1_1.S1_1Left;
					exhibit Exiting003.S1.S1_1.S1_1Right;
					exhibit Exiting003.S1.S1_1.S1_1Left.done;
					exhibit Exiting003.S1.S1_1.S1_1Right.done;
					:>> eventCounter = 2;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
