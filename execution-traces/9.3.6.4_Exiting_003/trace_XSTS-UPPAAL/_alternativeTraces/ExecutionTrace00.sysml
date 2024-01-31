package {
	
	import Exiting003_Verification::*;
	import VerificationCases::*;
	import Exiting003_System::*;
	
	verification exiting003 : TestVerification {
		
		
		subject :>> exiting003 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Exiting003.wait;
					:>> eventCounter = 0;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
