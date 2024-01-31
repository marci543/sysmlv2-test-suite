package {
	
	import Exiting001_Verification::*;
	import VerificationCases::*;
	import Exiting001_System::*;
	
	verification exiting001 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		
		subject :>> exiting001 {
			timeslice state0 : Exiting001_System {
				:>> statechart {
					exhibit Exiting001.waiting;
					:>> eventCounter = 0;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : Exiting001_System {
				:>> statechart {
					exhibit Exiting001.S1;
					exhibit Exiting001.S1.S1Left;
					exhibit Exiting001.S1.S1Right;
					exhibit Exiting001.S1.S1Left.S1_1;
					exhibit Exiting001.S1.S1Right.S2_1;
					exhibit Exiting001.S1.S1Left.S1_1.S1_1_1;
					:>> eventCounter = 0;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
