package 'Port Example' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	attribute def Vt;
	part def B;
	port def pd1;
	port def pd2;
	part def FA {
		port p1 : B{
				@ExpectedError{msg="A port must be typed by port definitions.";location="port p1 : B;";}
		}
		port p2 : Vt{
				@ExpectedError{msg="A port must be typed by port definitions.";location="port p2 : Vt;";}
		}

		port two_port_def_types: pd1, pd2;
	}
	part tank: FA {
		port pp redefines p1{
				@ExpectedError{msg="A port must be typed by port definitions.";location="port pp redefines p1;";}
		}
	}
}
