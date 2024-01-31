package P {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	part def ABlock;	part def B;	part def C;	part def D;	part def E;
	
	connection def AB {
		end : D[1];
		end : E[1];
	}
	connection def BC {
		end : B[1];
		end : C[1];
	}
	part apart : ABlock {
		part b : B[1];
		part c: C[1];
		
		connection ab : AB connect b to c;
		connection bc : AB, BC connect b to c;
		
		connection :ABlock connect b to c{
				@ExpectedError{msg="A connection must be typed by connection definitions.";location="connection :ABlock connect b to c;";}
		}
		connection :apart connect b to c{
				@ExpectedError{msg="A connection must be typed by connection definitions.";location="connection :apart connect b to c;";}
		}
	}
}
