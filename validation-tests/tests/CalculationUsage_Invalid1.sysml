package pkg {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	calc def 'F1';
	calc def 'F2';
	action def B;
	action bb: B;
	part def A {
	 	calc f1 : F1, F2{
	 			@ExpectedError{msg="A calculation must be typed by one calculation definition.";location="calc f1 : F1, F2;";}
	 	}
    	calc f2: A{
    			@ExpectedError{msg="A calculation must be typed by one calculation definition.";location="calc f2: A;";}
    	}
    	calc f3: f2{
    			@ExpectedError{msg="A calculation must be typed by one calculation definition.";location="calc f3: f2;";}
				@ExpectedError{msg="Features must have at least one type";location="calc f3: f2;";}
    	}
    	calc f4: A::f1{
    			@ExpectedError{msg="A calculation must be typed by one calculation definition.";location="calc f4: A::f1;";}
				@ExpectedError{msg="Features must have at least one type";location="calc f4: A::f1;";}
    	}
    	calc f5: B{
    			@ExpectedError{msg="A calculation must be typed by one calculation definition.";location="calc f5: B;";}
    	}
    	calc f6: bb{
    			@ExpectedError{msg="A calculation must be typed by one calculation definition.";location="calc f6: bb;";}
    	}
   	}
}
