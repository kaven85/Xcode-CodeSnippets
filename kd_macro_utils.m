// kd_Macro_Utils
// TQ Macro Utils
//
// IDECodeSnippetCompletionPrefix: kd_macro_utils
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 20888CE5-13E0-4B11-9BE3-4EEEB93DB277
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#ifdef DEBUG

#define XCODE_COLORS_ESCAPE @"\033["
#define XCODE_COLORS_RESET_FG  XCODE_COLORS_ESCAPE @"fg;"
#define XCODE_COLORS_RESET_BG  XCODE_COLORS_ESCAPE @"bg;"
#define XCODE_COLORS_RESET     XCODE_COLORS_ESCAPE @";"

//定义输出
//输出异常信息（红色）
#define LogErrorMsg(msg, ...) NSLog((XCODE_COLORS_ESCAPE  @"fg255,0,0;" msg XCODE_COLORS_RESET), ##__VA_ARGS__)
//输出信息（绿色）
#define LogInfoMsg(msg, ...) NSLog((XCODE_COLORS_ESCAPE @"fg50,205,50;" msg  XCODE_COLORS_RESET), ##__VA_ARGS__)
//输出警告信息（黄色）
#define LogWarningMsg(msg, ...) NSLog((XCODE_COLORS_ESCAPE @"fg255,215,0;" msg XCODE_COLORS_RESET), ##__VA_ARGS__)
//输出Trace信息（蓝色）
#define LogTraceMsg(msg, ...) NSLog((XCODE_COLORS_ESCAPE @"fg11,158,251;" msg XCODE_COLORS_RESET), ##__VA_ARGS__)


#define TRACE  LogTraceMsg(@"===TRACE===: %s,LINE:%d", __func__,__LINE__);

#else

#define NSLog(...)
#define TRACE
#define LogErrorMsg(...)
#define LogInfoMsg(...)
#define LogWarningMsg(...)
#define LogTraceMsg(...)
#endif


#define EMPTY_STRING        @""

#define STR(key)            NSLocalizedString(key, nil)

#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]

// UIConstants provides contants variables for UI control.
#define UI_NAVIGATION_BAR_HEIGHT    44
#define UI_TAB_BAR_HEIGHT           49
#define UI_STATUS_BAR_HEIGHT        20
#define UI_SCREEN_WIDTH             ([[UIScreen mainScreen] bounds].size.weight)
#define UI_SCREEN_HEIGHT            ([[UIScreen mainScreen] bounds].size.height)

#define UI_LABEL_LENGTH             200
#define UI_LABEL_HEIGHT             15
#define UI_LABEL_FONT_SIZE          12
#define UI_LABEL_FONT               [UIFont systemFontOfSize:UI_LABEL_FONT_SIZE]



/*
 *  System Versioning Preprocessor Macros
 */
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

/*
 Usage sample:
 
 if (SYSTEM_VERSION_LESS_THAN(@"4.0")) {
 ...
 }
 
 if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"3.1.1")) {
 ...
 }
 
 */