package ViewRendering_invalid {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	rendering r;
	
	view def V {
		rendering r1;
		rendering r2{
				@ExpectedError{msg="A view definition may have at most one rendering.";location="rendering r2;";}
		}
	}

	view v {
		render r;
		rendering r3{
				@ExpectedError{msg="A view may have at most one rendering.";location="rendering r3;";}
		}
		rendering r4{
				@ExpectedError{msg="A view may have at most one rendering.";location="rendering r4;";}
		}
	}
}
