package {
	
	import Event009_Verification::*;
	import VerificationCases::*;
	import Event009_System::*;
	
	verification event009 : TestVerification {
		
		
		subject :>> event009 {
			timeslice state0 : System {
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
