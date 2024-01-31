package SysmlLanguageTestingMetadata {
	import ScalarValues::String;
	metadata def NoErrors;
	metadata def ExpectedWarning {
		attribute msg : String;
		attribute location : String;
	}
	metadata def ExpectedError {
		attribute msg : String;
		attribute location : String;
	}
	metadata def EmptyData{}
}