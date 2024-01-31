/*
statechart_Event019E_StatechartStatechart.SubS1Left.InitialS1LeftOfSubS1Left --> statechart_Event019E_StatechartStatechart.SubS1Left.S1_1
*/
E<> (T1_1_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubS1Left.S1_1 --> statechart_Event019E_StatechartStatechart.SubS1Left.FinalStateOfSubS1Left
*/
E<> (T1_2_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.ParentS1Left.InitialS1LeftOfParentS1Left --> statechart_Event019E_StatechartStatechart.ParentS1Left.S1Left
*/
E<> (__id_InitialS1LeftOfParentS1Left_0_S1Left__statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubS1Right.S2_1 --> statechart_Event019E_StatechartStatechart.SubS1Right.FinalStateOfSubS1Right
*/
E<> (T2_2_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubS2_1.S2_1_1 --> statechart_Event019E_StatechartStatechart.SubS2_1.FinalStateOfSubS2_1
*/
E<> (T2_1_2_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.ParentS1Right.InitialS1RightOfParentS1Right --> statechart_Event019E_StatechartStatechart.ParentS1Right.S1Right
*/
E<> (__id_InitialS1RightOfParentS1Right_1_S1Right__statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubS2_1.InitialS2_1OfSubS2_1 --> statechart_Event019E_StatechartStatechart.SubS2_1.S2_1_1
*/
E<> (T2_1_1_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubEvent019E.wait --> statechart_Event019E_StatechartStatechart.SubEvent019E.S1
*/
E<> (T2_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubEvent019E.S1 --> statechart_Event019E_StatechartStatechart.SubEvent019E.FinalStateOfSubEvent019E
*/
E<> (T3_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubEvent019E.InitialEvent019EOfSubEvent019E --> statechart_Event019E_StatechartStatechart.SubEvent019E.wait
*/
E<> (T1_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
/*
statechart_Event019E_StatechartStatechart.SubS1Right.InitialS1RightOfSubS1Right --> statechart_Event019E_StatechartStatechart.SubS1Right.S2_1
*/
E<> (T2_1_statechart_Event019E_StatechartStatechart) && P_System._StableLocation_
