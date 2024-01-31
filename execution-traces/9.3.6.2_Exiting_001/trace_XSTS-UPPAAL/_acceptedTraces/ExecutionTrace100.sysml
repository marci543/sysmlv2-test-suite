package {
	
	import Exiting001_Verification::*;
	import VerificationCases::*;
	import Exiting001_System::*;
	
	verification exiting001 : TestVerification {
		
		message _0_startPort_StartSignal_ of StartSignal;
		message _1_continuePort_ContinueSignal_ of ContinueSignal;
		message _2_S2_1_exit_OutSignal_1 of OutSignal;
		message _3_S1_1_1_exit_OutSignal_2 of OutSignal;
		message _4_S1_1_exit_OutSignal_3 of OutSignal;
		message _5_S1_exit_OutSignal_4 of OutSignal;
		message _6_T3_testEnd_OutSignal_5 of OutSignal;
		
		subject :>> exiting001 {
			timeslice state0 : Exiting001_System {
				:>> statechart {
					exhibit Exiting001.waiting;
					:>> eventCounter = 0;
				}
			} then 
			event _0_startPort_StartSignal_::source; then
			timeslice state1 : Exiting001_System {
				:>> statechart {
					exhibit Exiting001.S1;
					exhibit Exiting001.S1.S1Left;
					exhibit Exiting001.S1.S1Right;
					exhibit Exiting001.S1.S1Left.S1_1;
					exhibit Exiting001.S1.S1Right.S2_1;
					exhibit Exiting001.S1.S1Left.S1_1.S1_1_1;
					:>> eventCounter = 0;
				}
			} then 
			event _1_continuePort_ContinueSignal_::source; then
			timeslice state2 : Exiting001_System {
				event _2_S2_1_exit_OutSignal_1::target;
				event _3_S1_1_1_exit_OutSignal_2::target;
				event _4_S1_1_exit_OutSignal_3::target;
				event _5_S1_exit_OutSignal_4::target;
				event _6_T3_testEnd_OutSignal_5::target;
				:>> statechart {
					exhibit Exiting001.done;
					:>> eventCounter = 5;
				}
			}
		}
		
		return result : VerdictKind = VerdictKind::fail;
	}
	
}
