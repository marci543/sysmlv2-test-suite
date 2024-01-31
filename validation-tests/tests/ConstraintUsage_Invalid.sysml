package pkg {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	constraint def AConstraint;
	constraint def AConstraint1;
	part def ABlock {
		assert constraint two_types : AConstraint, ABlock{
				@ExpectedError{msg="A constraint must be typed by one constraint definition.";location="assert constraint two_types : AConstraint, ABlock;";}
		}
		assert constraint aConstraint0: ABlock{
				@ExpectedError{msg="A constraint must be typed by one constraint definition.";location="assert constraint aConstraint0: ABlock;";}
		}
		assert constraint aConstraint1 : AConstraint, AConstraint1{
				@ExpectedError{msg="A constraint must be typed by one constraint definition.";location="assert constraint aConstraint1 : AConstraint, AConstraint1;";}
		}
	}	
}
