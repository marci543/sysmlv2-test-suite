package {
	
	import Event019E_Verification::*;
	import VerificationCases::*;
	import Event019E_System::*;
	
	verification event019E : TestVerification {
		
		
		subject :>> event019E {
			timeslice state0 : Event019E_System {
				:>> statechart {
					exhibit Event019E.wait;
					:>> eventCounter = 0;
					:>> outt = false;
					:>> s11finished = false;
					:>> s211finished = false;
					:>> s21finished = false;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
