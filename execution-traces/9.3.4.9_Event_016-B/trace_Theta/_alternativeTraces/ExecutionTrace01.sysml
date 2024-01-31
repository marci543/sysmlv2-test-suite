package {
	
	import Event016B_Verification::*;
	import VerificationCases::*;
	import Event016B_System::*;
	
	verification event016B : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_T2_OutSignal_1 of OutSignal;
		message _2_T1_1_OutSignal_2 of OutSignal;
		message _3_T2_1_OutSignal_3 of OutSignal;
		message _4_T2_1_1_OutSignal_4 of OutSignal;
		message _5_T2_2_1_OutSignal_5 of OutSignal;
		
		subject :>> event016B {
			timeslice state0 : Event016B_System {
				:>> statechart {
					exhibit Event016B.wait;
					:>> eventCounter = 0;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : Event016B_System {
				event _1_T2_OutSignal_1::target;
				event _2_T1_1_OutSignal_2::target;
				event _3_T2_1_OutSignal_3::target;
				event _4_T2_1_1_OutSignal_4::target;
				event _5_T2_2_1_OutSignal_5::target;
				:>> statechart {
					exhibit Event016B.S1;
					exhibit Event016B.S1.S1Left;
					exhibit Event016B.S1.S1Right;
					exhibit Event016B.S1.S1Left.S1_1;
					exhibit Event016B.S1.S1Right.S2_1;
					exhibit Event016B.S1.S1Right.S2_1.S2_1Left;
					exhibit Event016B.S1.S1Right.S2_1.S2_1Right;
					exhibit Event016B.S1.S1Right.S2_1.S2_1Left.S2_1_1;
					exhibit Event016B.S1.S1Right.S2_1.S2_1Right.S2_2_1;
					:>> eventCounter = 5;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
