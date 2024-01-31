package Verification_invalid {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;

	requirement def R {
		doc /* ... */
		
		verify requirement : R{
				@ExpectedError{msg="A requirement verification must be in the objective of a verification case.";location="verify requirement : R;";}
		}

		verify r{
				@ExpectedError{msg="A requirement verification must be in the objective of a verification case.";location="verify r;";}
		}
	}
	
	requirement r : R;

	verification def VerificationCase {		
		objective {
			verify requirement : R;
		}
		
		requirement {
			verify r{
					@ExpectedError{msg="A requirement verification must be in the objective of a verification case.";location="verify r;";}
			}
		}
	}
	
	case def VerificationPlan {
		objective {
			verify r{
					@ExpectedError{msg="A requirement verification must be in the objective of a verification case.";location="verify r;";}
			}
		}
	}
	
}
