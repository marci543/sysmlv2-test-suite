package pkg {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	import ScalarValues::*;
	item def A {
		item i1: Real{
				@ExpectedError{msg="An item must be typed by item definitions.";location="item i1: Real;";}
		}
		item i2: att{
				@ExpectedError{msg="An item must be typed by item definitions.";location="item i2: att;";}
		}
		item i3: act{
				@ExpectedError{msg="An item must be typed by item definitions.";location="item i3: act;";}
		}
		item i4: AttDef{
				@ExpectedError{msg="An item must be typed by item definitions.";location="item i4: AttDef;";}
		}
		item i5: PartDef::aPort{
				@ExpectedError{msg="An item must be typed by item definitions.";location="item i5: PartDef::aPort;";}
		}
		item i6: PartDef::aPart{
				@ExpectedError{msg="An item must be typed by item definitions.";location="item i6: PartDef::aPart;";}
				@ExpectedError{msg="Features must have at least one type";location="item i6: PartDef::aPart;";}
		}
		item i7: PartDef, AttDef{
				@ExpectedError{msg="An item must be typed by item definitions.";location="item i7: PartDef, AttDef;";}
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
