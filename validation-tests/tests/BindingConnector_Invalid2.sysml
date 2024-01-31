package '1a-Parts Tree Simplified' {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;
	
	part rearAxleAssembly {			
		part rearWheel: Wheel[2];
		ref x = rearWheel+1{
				@ExpectedWarning{msg="Bound features should have conforming types";location="rearWheel+1";}
		}
	}
	part def Wheel;
}
