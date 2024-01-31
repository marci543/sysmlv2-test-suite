package 'Individuals and Roles' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	part def A;
	part def B;
	part def BB :> B;
	part def C;
	
	individual def AA :> BB;
	individual def CC :> A;
	individual def DD;

	individual def A_1 :> A {
		part b_1 : B;
		part c_1 : C;
	}
	individual def B_1 :> B;
	
	individual two_types : A_1, B_1{
			@ExpectedError{msg="An individual must be typed by one individual definition.";location="individual two_types : A_1, B_1;";}
	}

	individual snapshot b_1_1 : B{
			@ExpectedError{msg="An individual must be typed by one individual definition.";location="individual snapshot b_1_1 : B;";}
	}
	
}
