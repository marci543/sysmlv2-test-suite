package {
	
	import Exiting005_Verification::*;
	import VerificationCases::*;
	import Exiting005_System::*;
	
	verification exiting005 : TestVerification {
		
		
		subject :>> exiting005 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Exiting005.wait;
					:>> eventCounter = 0;
					:>> s11finished = false;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
