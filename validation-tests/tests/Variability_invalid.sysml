package VariabilityModel {
	import ScalarValues::String;
	import SysmlLanguageTestingMetadata::*;

	part def B;
	part b1 : B;
	part b2 : B;

    variation attribute def AttributeChoices {
    	variant attribute a1;
    	attribute a2{
    			@ExpectedError{msg="A variation must only have variant owned members.";location="attribute a2;";}
    	}
    }

    part def PartChoices :> B {
        variant b1{
        		@ExpectedError{msg="A variant must be an owned member of a variation.";location="b1;";}
        }
        variant b2{
        		@ExpectedError{msg="A variant must be an owned member of a variation.";location="b2;";}
        }
    }
    
    part def D;
    part d1 : D;
    part d2 : D;

    part c {
        variation part d : D {
        	part d1{
        			@ExpectedError{msg="A variation must only have variant owned members.";location="part d1;";}
        	}
        	variant part d2;
        }
        
        action f {
        	variant action f1{
        			@ExpectedError{msg="A variant must be an owned member of a variation.";location="action f1;";}
        	}
        	action f2;
        }       
    }
}
