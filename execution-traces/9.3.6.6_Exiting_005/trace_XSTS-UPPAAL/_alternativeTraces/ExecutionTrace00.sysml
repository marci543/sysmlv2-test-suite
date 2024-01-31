package {
	
	import Exiting005_Verification::*;
	import VerificationCases::*;
	import Exiting005_System::*;
	
	verification exiting005 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		
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
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
