package {
	
	import Entering010_Verification::*;
	import VerificationCases::*;
	import Entering010_System::*;
	
	verification entering010 : TestVerification {
		
		
		subject :>> entering010 {
			timeslice state0 : System {
				:>> statechart {
					exhibit Entering010.wait;
					:>> eventCounter = 0;
					:>> s11finished = false;
					:>> s21finished = false;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
