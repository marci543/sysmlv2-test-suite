package Test {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	part def A;
	part def B;
	part def C specializes B;
	
	part P {
		part a: A {
			in x: ScalarValues::Integer;
		}
		
		part b: B {
			out x;
			out y: ScalarValues::String;
		}
		
		part c: C {
			in y;
		}
		
		bind a = b{
				@ExpectedWarning{msg="Bound features should have conforming types";location="bind a = b;";}
		}
		// TBD errors --> "Output feature must conform to input feature" at "bind a.x = b.x;"
		bind a.x = b.x;
		
		bind b = c;
		bind b.y = c.y;
	}
}
