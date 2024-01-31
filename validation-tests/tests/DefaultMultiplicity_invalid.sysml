package DefaultMultiplicity {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;

	attribute a1;
	item i1;
	part p1;
	port t1;
	
	part def P {
		// These kinds of usages have default multiplicity of [1..1].
		attribute a2 :> a1;
		item i2 :> i1;
		part p2 :> p1;
		port t2 :> t1;
		
		attribute a3[*] :> a2{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="a2";}
		}
		item i3[*] :> i2{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="i2";}
		}
		part p3[*] :> p2{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="p2";}
		}
		port t3[*] :> t2{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="t2";}
		}
		
		attribute a4;
		item i4;
		part p4;
		port t4;
		
		attribute a5[*] :> a4{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="a4";}
		}
		item i5[*] :> i4{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="i4";}
		}
		part p5[*] :> p4{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="p4";}
		}
		port t5[*] :> t4{
				@ExpectedWarning{msg="Subsetting/redefining feature should not have larger multiplicity upper bound";location="t4";}
		}
	}
	
	part def Q {
		// These kinds of usages do not have default multiplicity.
		action n1;
		state s1;
		connection c1 connect n1 to s1;
		
		action n2[*] :> n1;
		state s2[*] :> s1;
		connection c2[*] :> c1 connect n2 to s2;
	}
	
}
