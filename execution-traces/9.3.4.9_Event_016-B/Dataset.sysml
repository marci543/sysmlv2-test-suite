package Event016B_Data {
	enum def TraceElement {
		enum S1_exit;
		enum S1_2_exit;
		enum S2_1_exit;
		enum T1_2_effect;
		enum T1_3_effect;
		enum T2_1_2_effect;
		enum T2_2_2_effect;
		enum T2_2_effect;
		enum T2_3_effect;
		enum T2_4_effect;
		enum T3_testEnd;
	}

	enum def Transition {
		enum T1;
		enum T2;
		enum T1_1;
		enum T1_2;
		enum T1_3;
		enum T2_1;
		enum T2_1_1;
		enum T2_2_1;
		enum T2_1_2;
		enum T2_2_2;
		enum T2_2;
		enum T2_3;
		enum T2_4;
		enum T3;
	}
	
	enum def Event {
		enum in_StartSignal;
		enum in_ContinueSignal;
	}
}