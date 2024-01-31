package 'Requirement Definitions' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	part def A {
		part a;
	}
	constraint def Rdef;
	constraint c: Rdef;
	requirement def <'1'> R1def;
	requirement def <'11'> R11def;
	requirement def <'2'> R2def  :> Rdef;
	
	requirement <'1.0'> r10 : R1def, R11def{
			@ExpectedError{msg="A requirement must be typed by one requirement definition.";location="requirement <'1.0'> r10 : R1def, R11def;";}
	}
	requirement <'1.1'> r11 : Rdef{
			@ExpectedError{msg="A requirement must be typed by one requirement definition.";location="requirement <'1.1'> r11 : Rdef;";}
	}
	requirement <'1.2'> r12 : R1def, R2def{
			@ExpectedError{msg="A requirement must be typed by one requirement definition.";location="requirement <'1.2'> r12 : R1def, R2def;";}
	}
	requirement r13 : A{
			@ExpectedError{msg="A requirement must be typed by one requirement definition.";location="requirement r13 : A;";}
	}
	requirement r14 : A::a{
			@ExpectedError{msg="A requirement must be typed by one requirement definition.";location="requirement r14 : A::a;";}
	}
	requirement r15 : c{
			@ExpectedError{msg="A requirement must be typed by one requirement definition.";location="requirement r15 : c;";}
	}
}
