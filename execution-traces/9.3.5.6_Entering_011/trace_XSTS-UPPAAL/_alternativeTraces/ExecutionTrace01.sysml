package {
	
	import Entering011_Verification::*;
	import VerificationCases::*;
	import Entering011_System::*;
	
	verification entering011 : TestVerification {
		
		
		subject :>> entering011 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Entering011.waiting;
					:>> eventCounter = 0;
					:>> s11finished = false;
					:>> s12finished = false;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
