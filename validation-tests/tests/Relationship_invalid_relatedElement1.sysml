package 'Streaming Example' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	part def  A {
		part def B {
			out ref myOut;
		}
		part def C {
			in ref myIn;
		}
		flow XXX from B::myOut to C::myIn{
				@ExpectedError{msg="Cannot identify item flow end (use dot notation)";location="B::myOut";}
				@ExpectedError{msg="Cannot identify item flow end (use dot notation)";location="C::myIn";}
				@ExpectedError{msg="Must be an accessible feature (use dot notation for nesting)";location="B::myOut";}
				@ExpectedError{msg="Must be an accessible feature (use dot notation for nesting)";location="C::myIn";}
		}
	} 
}
