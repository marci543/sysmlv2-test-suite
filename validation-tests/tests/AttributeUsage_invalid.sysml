package 'ValueProperty Example' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	port def P;
	part def A {
		part a: A;
		port p: P;
	}
	part def Vehicle {
		attribute a : A{
				@ExpectedError{msg="An attribute must be typed by attribute definitions.";location="attribute a : A;";}
		}
		attribute b : A::a{
				@ExpectedError{msg="An attribute must be typed by attribute definitions.";location="attribute b : A::a;";}
		}
		attribute s : P{
				@ExpectedError{msg="An attribute must be typed by attribute definitions.";location="attribute s : P;";}
		}
		attribute un: A::p{
				@ExpectedError{msg="An attribute must be typed by attribute definitions.";location="attribute un: A::p;";}
		}
		attribute n: AB{
				@ExpectedError{msg="An attribute must be typed by attribute definitions.";location="attribute n: AB;";}
		}
		}
	connection def  AB {
		end : A;
		end : A;
	}
}
