package P {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	part def P;	
	part def B;	
	part def C;	
	
	connection def BC1 {
		end : B[1];
		end : C[1];
	}
	allocation def BC2 {
		end : B[1];
		end : C[1];
	}
	part p : P {
		part b : B[1];
		part c: C[1];
		
		allocation bc : BC2 allocate b to c;
		
		allocation :P allocate b to c{
				@ExpectedError{msg="An allocation must be typed by allocation definitions.";location="allocation :P allocate b to c;";}
		}
		allocation :p allocate b to c{
				@ExpectedError{msg="An allocation must be typed by allocation definitions.";location="allocation :p allocate b to c;";}
		}
		allocation :BC1 allocate b to c{
				@ExpectedError{msg="An allocation must be typed by allocation definitions.";location="allocation :BC1 allocate b to c;";}
		}
	}
}
