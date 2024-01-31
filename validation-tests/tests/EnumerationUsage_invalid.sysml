package EnumerationUsage_invalid {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	attribute def A;
	enum def E {a; b; c;}
	enum def EE;
	
	attribute a1 : E;
	attribute a2 : E, A{
			@ExpectedError{msg="An enumeration attribute cannot have more than one type.";location="attribute a2 : E, A;";}
	}
	attribute a3 : E, EE{
			@ExpectedError{msg="An enumeration attribute cannot have more than one type.";location="attribute a3 : E, EE;";}
	}
	
	enum e1 : E;
	enum e2 : A{
			@ExpectedError{msg="An enumeration must be typed by one enumeration definition.";location="enum e2 : A;";}
	}
	enum e3 : E, EE{
			@ExpectedError{msg="An enumeration must be typed by one enumeration definition.";location="enum e3 : E, EE;";}
	}
}
