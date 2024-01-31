package {
	
	import Event016B_Verification::*;
	import VerificationCases::*;
	import Event016B_System::*;
	
	verification event016B : TestVerification {
		
		
		subject :>> event016B {
			timeslice state0 : Event016B_System {
				:>> statechart {
					exhibit Event016B.wait;
					:>> eventCounter = 0;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
