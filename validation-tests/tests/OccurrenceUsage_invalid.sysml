package pkg {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	import ScalarValues::*;
	occurrence def A {
		occurrence areal: Real{
				@ExpectedError{msg="An occurrence must be typed by occurrence definitions.";location="occurrence areal: Real;";}
		}
		occurrence avalue:> aValue{
				@ExpectedError{msg="An occurrence must be typed by occurrence definitions.";location="occurrence avalue:> aValue;";}
		}
		occurrence twoTypes: PartDef, Real{
				@ExpectedError{msg="An occurrence must be typed by occurrence definitions.";location="occurrence twoTypes: PartDef, Real;";}
		}
	}
	attribute aValue: Real;
	part def PartDef;
	part aPart: PartDef;	
}
