package P {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	part def A {
		part x;
	}
	part def B {
		part y {
			part z;
		}
		connect A::x to y::z{
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="A::x";}
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="y::z";}
		}
	}
	part b {
		part y : A;
		part z;
		connect y::x to z{
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="y::x";}
		}
	}
}
