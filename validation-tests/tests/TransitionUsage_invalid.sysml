package TransitionUsage_invalid {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	state def S1;
	
	state def S2 parallel {
		state S2_1;
		then S2_2{
				@ExpectedError{msg="A parallel state cannot have successions or transitions.";location="then S2_2";}
		}
		state S2_2;
	}

	state def S3 {
		state S3_1;
		state S3_2;
	}
	
	state s1;
	
	state s2 parallel {
		state s2_1;
		then s2_2{
				@ExpectedError{msg="A parallel state cannot have successions or transitions.";location="then s2_2";}
		}
		state s2_2;
	}

	state s3 {
		state s3_1;
		state s3_2 {
			state s3_2_1;
			state s3_2_2;
		}
	}
	
}
