package BindingConnectorExample {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	part def A;
	port def PortDefOut {
		in ref myDefIn: A;
		out ref myDefOut: A;
	}
	
	port def PortDefIn {
		out ref myDefOut : A;
		in ref myDefIn : A;
	}
	part def B0 {
		port p0 : PortDefOut;
	}
	part def B1 {
		port p1 : PortDefIn;
	}
	part def V;
	part v : V {
		part b0 : B0 {
			port p0 redefines B0::p0 {
				in ref myDefIn redefines B0::p0::myDefIn;
				out ref myDefOut redefines B0::p0::myDefOut;
			}
		}
		part b1 : B1 {
			port p1 redefines B1::p1 {
				in ref myDefIn redefines B1::p1::myDefIn;
				out ref myDefOut redefines B1::p1::myDefOut;
			}
		}
			
		//redefines - redefines
		bind b0.p0.myDefIn = b1.p1.myDefIn;
		bind b1.p1.myDefIn = b0.p0.myDefIn;  
		bind b0.p0.myDefIn = b1.p1.myDefOut;
		bind b0.p0.myDefOut = b1.p1.myDefIn;
		bind b0.p0.myDefOut = b1.p1.myDefOut;
		bind b1.p1.myDefOut = b0.p0.myDefOut;
		
		
		part b2: B1 {
			port p2 {
				in ref myIn;
				out ref myOut;
			}
		}
		//redefines - local
		bind b0.p0.myDefIn = b2.p2.myIn;
		bind b2.p2.myIn = b0.p0.myDefIn;
		// TBD errors --> "Output feature must conform to input feature" at "b0.p0.myDefIn = b2.p2.myOut;"
		bind b0.p0.myDefIn = b2.p2.myOut; //OutTypes[Part,Object] InTypes [A, Part, Object] 
		bind b0.p0.myDefOut = b2.p2.myIn; //OutTypes[A, Part, Object] InTypes [Part, Object]
		bind b0.p0.myDefOut = b2.p2.myOut;
		bind b2.p2.myOut = b0.p0.myDefOut;
		
		
		part b3 : B1;
		part b4 : B1{
			port p1 redefines B1::p1;
		}
		part b5 : B1{
			port p1 redefines B1::p1{
				in ref myDefIn redefines B1::p1::myDefIn;
				in ref myIn redefines B1::p1::myDefIn;
			}
		}
		bind B0::p0.myDefIn = B0::p0.myDefIn{
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="B0::p0.myDefIn";}
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="B0::p0.myDefIn";}
		}
		bind b0::p0.myDefIn = b4::p1.myDefIn{
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="b0::p0.myDefIn";}
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="b4::p1.myDefIn";}
		}
		bind b4::p1.myDefIn = b0::p0.myDefIn{
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="b4::p1.myDefIn";}
				@ExpectedWarning{msg="Should be an accessible feature (use dot notation for nesting)";location="b0::p0.myDefIn";}
		}
		bind b0.p0.myDefIn = b5.p1.myDefIn;
		bind b5.p1.myDefIn = b0.p0.myDefIn;
		bind b0.p0.myDefIn = b5.p1.myIn;
		bind b5.p1.myIn = b0.p0.myDefIn;
		

	} 
} 
