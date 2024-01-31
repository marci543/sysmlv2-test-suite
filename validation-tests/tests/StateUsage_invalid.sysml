package StateUsage_invalid {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;

	part def A;
	attribute def VT;
	action ac;
	state s1 : A{
			@ExpectedError{msg="A state must be typed by state definitions.";location="state s1 : A;";}
	}
	state s2 : VT{
			@ExpectedError{msg="A state must be typed by state definitions.";location="state s2 : VT;";}
	}
	state s3 : ac{
			@ExpectedError{msg="A state must be typed by state definitions.";location="state s3 : ac;";}
	}
	
	state s4 {
		entry action a1;
		entry action a2{
				@ExpectedError{msg="A state may have at most one entry action.";location="entry action a2;";}
		}
		
		do action b1;
  		do action b2{
  				@ExpectedError{msg="A state may have at most one do action.";location="do action b2;";}
  		}
  		
  		exit action c1;
  		exit action c2{
  				@ExpectedError{msg="A state may have at most one exit action.";location="exit action c2;";}
  		}
	}
	
}
