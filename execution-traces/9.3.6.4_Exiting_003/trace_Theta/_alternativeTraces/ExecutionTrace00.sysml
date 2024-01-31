package {
	
	import Exiting003_Verification::*;
	import VerificationCases::*;
	import Exiting003_System::*;
	
	verification exiting003 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		
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
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
