package {
	
	import Exiting001_Verification::*;
	import VerificationCases::*;
	import Exiting001_System::*;
	
	verification exiting001 : TestVerification {
		
		
		subject :>> exiting001 {
			timeslice state0 : Exiting001_System {
				:>> statechart {
					exhibit Exiting001.waiting;
					:>> eventCounter = 0;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
