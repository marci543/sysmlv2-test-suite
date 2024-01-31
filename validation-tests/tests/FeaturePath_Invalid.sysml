package Q {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
  part def F {
  	part a : A;
  }
  
  part f : F;
  
  part def A {
    part g = f::a{
    		@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="f::a";}
    }
  }
  
  part def B {
  	part f : F;
  	part a : A;
  }
  
  part def C {
  	part b : B;
  
	part c subsets b.f {
	  	part aa subsets a;
	}
	
	connect b.f.a to c::aa{
			@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="c::aa";}
	}
  }
	
}
