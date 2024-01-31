package pkg {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	import ScalarValues::*;
	part def A {
		part p1: Real{
				@ExpectedError{msg="A part must be typed by item definitions and at least one part definition.";location="part p1: Real;";}
		}
		part p2: att{
				@ExpectedError{msg="A part must be typed by item definitions and at least one part definition.";location="part p2: att;";}
		}
		part p3: act{
				@ExpectedError{msg="A part must be typed by item definitions and at least one part definition.";location="part p3: act;";}
		}
		part p4: AttDef{
				@ExpectedError{msg="A part must be typed by item definitions and at least one part definition.";location="part p4: AttDef;";}
		}
		part p5: PartDef::aPort{
				@ExpectedError{msg="A part must be typed by item definitions and at least one part definition.";location="part p5: PartDef::aPort;";}
		}
		part p6: PartDef::aPart{
				@ExpectedError{msg="A part must be typed by item definitions and at least one part definition.";location="part p6: PartDef::aPart;";}
				@ExpectedError{msg="Features must have at least one type";location="part p6: PartDef::aPart;";}
		}
		part p7: PartDef, AttDef{
				@ExpectedError{msg="A part must be typed by item definitions and at least one part definition.";location="part p7: PartDef, AttDef;";}
		}
	}
	attribute def AttDef;
	attribute att: AttDef;
	part def PartDef {
		port aPort;
		part aPart;
	}
	action act;
}
