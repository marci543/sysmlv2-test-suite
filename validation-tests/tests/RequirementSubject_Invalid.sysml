package 'Requirement Subjects' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	requirement def R {
		subject s1{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s1;";}
		}
		
		subject s2{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s2;";}
		}
	}
	
	requirement r: R {
		subject s3{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s3;";}
		}
		
		subject s4{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s4;";}
		}
	}
	
	requirement r1 : R {
		subject s5; // Valid implicit redefinition.
	}
	
}
