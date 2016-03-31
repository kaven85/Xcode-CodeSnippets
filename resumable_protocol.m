// resumable protocol
// resumable protocol
//
// IDECodeSnippetCompletionPrefix: resumable
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: F8E403BB-2DA1-4CBE-AC87-9AC48CAA2C7B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - Resumable Protocol 

- (ApiRecord *) apiRecordValue {
    ApiRecord * record = [[ApiRecord alloc] init];
    record.apiId = [ModelUtils getRequestHashKey:self];
    record.clazz = [self class];
    record.args = [NSDictionary dictionaryWithObjectsAndKeys:
                   <#value#>, @"<#key#>", nil];
    record.createdTime = [NSDate date];
    record.summary = [ModelUtils getNetworkQueueSummary:<#summery#>];
    record.errorType = [self getErrorType];
    return record;
}

- (void) resumeFromApiRecord:(ApiRecord *)apiRecord {
    NSDictionary * args = apiRecord.args;
    
}

