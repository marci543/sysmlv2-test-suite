package pkg {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	part def A {
		part b: B;
		part c: B;
	}
	part def B {}
	part a : A {
		part b: B{
				@ExpectedWarning{msg="Duplicate of inherited member name";location="b";}
		}
		part redefines c;
	}
}
