package 'State Subactions' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	state def S {
		entry action a;
		do action b;
		exit action c;
		
		exit action c1{
				@ExpectedError{msg="A state may have at most one exit action.";location="exit action c1;";}
		}
		entry action a1{
				@ExpectedError{msg="A state may have at most one entry action.";location="entry action a1;";}
		}
		do action b1{
				@ExpectedError{msg="A state may have at most one do action.";location="do action b1;";}
		}
	}
	
	state s {
		entry action a;
		do action b;
		exit action c;
		
		exit action c1{
				@ExpectedError{msg="A state may have at most one exit action.";location="exit action c1;";}
		}
		entry action a1{
				@ExpectedError{msg="A state may have at most one entry action.";location="entry action a1;";}
		}
		do action b1{
				@ExpectedError{msg="A state may have at most one do action.";location="do action b1;";}
		}
	}
	
}
