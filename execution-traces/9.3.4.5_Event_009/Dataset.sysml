package Event009_Data {
	enum def TraceElement {
		enum T1_2_effect;
		enum T2_2_effect;
		enum T3_effect;
		enum T4_testEnd;
		enum T5_testEnd;
	}

	enum def Transition {
		enum T1;
		enum T2;
		enum T1_1;
		enum T1_2;
		enum T2_1;
		enum T2_2;
		enum T3;
		enum T4;
		enum T5;
	}
	
	enum def Event {
		enum in_StartSignal;
		enum in_ContinueSignal;
        enum in_PendingSignal;
	}
}