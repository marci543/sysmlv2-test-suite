package SemanticMetadata_invalid {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;

	item def C {
		ref x;
	}
	item f : C {
		ref y;
	}

    abstract metadata def A :> Metaobjects::SemanticMetadata {
    	ref :>> baseType; // Testing that baseType can be left unbound.
    }
	
	metadata def B :> A {
		ref :>> baseType = f as SysML::Usage;
	}
	
	item def C1 {
		@A{
				@ExpectedError{msg="Must have a concrete type";location="@A;";}
		}
		ref :>> x{
				@ExpectedError{msg="Couldn't resolve reference to Feature 'x'.";location="x";}
		}
	}
	
	item def C2 {
		@B;
		ref :>> x;
		ref :>> y{
				@ExpectedError{msg="Couldn't resolve reference to Feature 'y'.";location="y";}
		}
	}
	
	item f1 {
		@A{
				@ExpectedError{msg="Must have a concrete type";location="@A;";}
		}
	}
	
}
