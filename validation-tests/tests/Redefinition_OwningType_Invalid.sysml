package 'Redefinition Example' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	part wheel : Wheel;
	part wheel1 redefines wheel{
			@ExpectedWarning{msg="A package-level feature should not be redefined";location="wheel";}
	}
	
	part def B {
		alias eng1 for Vehicle::eng;
	}

	part def Vehicle specializes B {
		part eng : Engine;
		part smallEng : Engine redefines eng1{
				@ExpectedWarning{msg="Owner of redefining feature should not be the same as owner of redefined feature";location="eng1";}
		}
	}
	part def Engine {
		part cyl : Cylinder[4..6];
	}
	part def Cylinder;
	part def Wheel;
}
