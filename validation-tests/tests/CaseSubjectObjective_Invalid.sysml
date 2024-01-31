package 'Case Subjects and Objectives' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	case def C {
		subject s1{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s1;";}
		}
		
		subject s2{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s2;";}
		}

		objective o1{
				@ExpectedError{msg="Only one objective is allowed.";location="objective o1;";}
		}
		
		objective o2{
				@ExpectedError{msg="Only one objective is allowed.";location="objective o2;";}
		}
	}
	
	case c: C {
		subject s3{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s3;";}
		}
		
		subject s4{
				@ExpectedError{msg="Only one subject is allowed.";location="subject s4;";}
		}

		objective o3{
				@ExpectedError{msg="Only one objective is allowed.";location="objective o3;";}
		}
		
		objective o4{
				@ExpectedError{msg="Only one objective is allowed.";location="objective o4;";}
		}
	}
	
	case c1 : C {
		subject s5; // Valid implicit redefinition.
		objective o5;
	}
	
}
