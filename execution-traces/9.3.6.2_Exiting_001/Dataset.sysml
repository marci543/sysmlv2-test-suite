package Exiting001_Data {
	enum def TraceElement {
		enum S1_1_1_exit;
		enum S1_1_exit;
		enum S2_1_exit;
		enum S1_exit;
		enum T3_testEnd;
	}

	enum def Transition {
		enum T1;
		enum T2;
		enum T1_1;
		enum T1_1_1;
		enum T3;
	}
	
	enum def Event {
		enum in_StartSignal;
		enum in_ContinueSignal;
	}
}