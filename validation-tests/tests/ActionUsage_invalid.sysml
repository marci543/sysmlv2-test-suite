package pkg {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	part def ABlock;
	action def AnActivity;
	action def B {
		action a: ABlock{
				@ExpectedError{msg="An action must be typed by action definitions.";location="action a: ABlock;";}
		}
		action b: ABlock, AnActivity{
				@ExpectedError{msg="An action must be typed by action definitions.";location="action b: ABlock, AnActivity;";}
		}
	}
	
}
