.class public Lxcrash/XCrash$InitParameters;
.super Ljava/lang/Object;
.source "XCrash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxcrash/XCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParameters"
.end annotation


# instance fields
.field anrCallback:Lxcrash/ICrashCallback;

.field anrCheckProcessState:Z

.field anrDumpFds:Z

.field anrDumpNetworkInfo:Z

.field anrLogCountMax:I

.field anrLogcatEventsLines:I

.field anrLogcatMainLines:I

.field anrLogcatSystemLines:I

.field anrRethrow:Z

.field appVersion:Ljava/lang/String;

.field enableAnrHandler:Z

.field enableJavaCrashHandler:Z

.field enableNativeCrashHandler:Z

.field javaCallback:Lxcrash/ICrashCallback;

.field javaDumpAllThreads:Z

.field javaDumpAllThreadsCountMax:I

.field javaDumpAllThreadsWhiteList:[Ljava/lang/String;

.field javaDumpFds:Z

.field javaDumpNetworkInfo:Z

.field javaLogCountMax:I

.field javaLogcatEventsLines:I

.field javaLogcatMainLines:I

.field javaLogcatSystemLines:I

.field javaRethrow:Z

.field libLoader:Lxcrash/ILibLoader;

.field logDir:Ljava/lang/String;

.field logFileMaintainDelayMs:I

.field logger:Lxcrash/ILogger;

.field nativeCallback:Lxcrash/ICrashCallback;

.field nativeDumpAllThreads:Z

.field nativeDumpAllThreadsCountMax:I

.field nativeDumpAllThreadsWhiteList:[Ljava/lang/String;

.field nativeDumpElfHash:Z

.field nativeDumpFds:Z

.field nativeDumpMap:Z

.field nativeDumpNetworkInfo:Z

.field nativeLogCountMax:I

.field nativeLogcatEventsLines:I

.field nativeLogcatMainLines:I

.field nativeLogcatSystemLines:I

.field nativeRethrow:Z

.field placeholderCountMax:I

.field placeholderSizeKb:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    const/16 v1, 0x1388

    .line 232
    iput v1, p0, Lxcrash/XCrash$InitParameters;->logFileMaintainDelayMs:I

    .line 233
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->logger:Lxcrash/ILogger;

    .line 234
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->libLoader:Lxcrash/ILibLoader;

    const/4 v1, 0x0

    .line 297
    iput v1, p0, Lxcrash/XCrash$InitParameters;->placeholderCountMax:I

    const/16 v2, 0x80

    .line 298
    iput v2, p0, Lxcrash/XCrash$InitParameters;->placeholderSizeKb:I

    const/4 v2, 0x1

    .line 327
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    .line 328
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaRethrow:Z

    const/16 v3, 0xa

    .line 329
    iput v3, p0, Lxcrash/XCrash$InitParameters;->javaLogCountMax:I

    const/16 v4, 0x32

    .line 330
    iput v4, p0, Lxcrash/XCrash$InitParameters;->javaLogcatSystemLines:I

    .line 331
    iput v4, p0, Lxcrash/XCrash$InitParameters;->javaLogcatEventsLines:I

    const/16 v5, 0xc8

    .line 332
    iput v5, p0, Lxcrash/XCrash$InitParameters;->javaLogcatMainLines:I

    .line 333
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaDumpFds:Z

    .line 334
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaDumpNetworkInfo:Z

    .line 335
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreads:Z

    .line 336
    iput v1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsCountMax:I

    .line 337
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsWhiteList:[Ljava/lang/String;

    .line 338
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->javaCallback:Lxcrash/ICrashCallback;

    .line 503
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    .line 504
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeRethrow:Z

    .line 505
    iput v3, p0, Lxcrash/XCrash$InitParameters;->nativeLogCountMax:I

    .line 506
    iput v4, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatSystemLines:I

    .line 507
    iput v4, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatEventsLines:I

    .line 508
    iput v5, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatMainLines:I

    .line 509
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpElfHash:Z

    .line 510
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpMap:Z

    .line 511
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpFds:Z

    .line 512
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpNetworkInfo:Z

    .line 513
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreads:Z

    .line 514
    iput v1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsCountMax:I

    .line 515
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsWhiteList:[Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->nativeCallback:Lxcrash/ICrashCallback;

    .line 709
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    .line 710
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrRethrow:Z

    .line 711
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrCheckProcessState:Z

    .line 712
    iput v3, p0, Lxcrash/XCrash$InitParameters;->anrLogCountMax:I

    .line 713
    iput v4, p0, Lxcrash/XCrash$InitParameters;->anrLogcatSystemLines:I

    .line 714
    iput v4, p0, Lxcrash/XCrash$InitParameters;->anrLogcatEventsLines:I

    .line 715
    iput v5, p0, Lxcrash/XCrash$InitParameters;->anrLogcatMainLines:I

    .line 716
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrDumpFds:Z

    .line 717
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrDumpNetworkInfo:Z

    .line 718
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->anrCallback:Lxcrash/ICrashCallback;

    return-void
.end method


# virtual methods
.method public disableAnrCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x0

    .line 738
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    return-object p0
.end method

.method public disableJavaCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    return-object p0
.end method

.method public disableNativeCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    return-object p0
.end method

.method public enableAnrCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    return-object p0
.end method

.method public enableJavaCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    return-object p0
.end method

.method public enableNativeCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    return-object p0
.end method

.method public setAnrCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 853
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->anrCallback:Lxcrash/ICrashCallback;

    return-object p0
.end method

.method public setAnrCheckProcessState(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 769
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrCheckProcessState:Z

    return-object p0
.end method

.method public setAnrDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 829
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrDumpFds:Z

    return-object p0
.end method

.method public setAnrDumpNetwork(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 841
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrDumpNetworkInfo:Z

    return-object p0
.end method

.method public setAnrLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 781
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogCountMax:I

    return-object p0
.end method

.method public setAnrLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 805
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogcatEventsLines:I

    return-object p0
.end method

.method public setAnrLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 817
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogcatMainLines:I

    return-object p0
.end method

.method public setAnrLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 793
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogcatSystemLines:I

    return-object p0
.end method

.method public setAnrRethrow(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 755
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrRethrow:Z

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 245
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setJavaCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 498
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->javaCallback:Lxcrash/ICrashCallback;

    return-object p0
.end method

.method public setJavaDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 456
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreads:Z

    return-object p0
.end method

.method public setJavaDumpAllThreadsCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 471
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsCountMax:I

    return-object p0
.end method

.method public setJavaDumpAllThreadsWhiteList([Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 486
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsWhiteList:[Ljava/lang/String;

    return-object p0
.end method

.method public setJavaDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 431
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpFds:Z

    return-object p0
.end method

.method public setJavaDumpNetworkInfo(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 443
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpNetworkInfo:Z

    return-object p0
.end method

.method public setJavaLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 383
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogCountMax:I

    return-object p0
.end method

.method public setJavaLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 407
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogcatEventsLines:I

    return-object p0
.end method

.method public setJavaLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 419
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogcatMainLines:I

    return-object p0
.end method

.method public setJavaLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 395
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogcatSystemLines:I

    return-object p0
.end method

.method public setJavaRethrow(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 371
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaRethrow:Z

    return-object p0
.end method

.method public setLibLoader(Lxcrash/ILibLoader;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 292
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->libLoader:Lxcrash/ILibLoader;

    return-object p0
.end method

.method public setLogDir(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 258
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    return-object p0
.end method

.method public setLogFileMaintainDelayMs(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 270
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->logFileMaintainDelayMs:I

    return-object p0
.end method

.method public setLogger(Lxcrash/ILogger;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 281
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->logger:Lxcrash/ILogger;

    return-object p0
.end method

.method public setNativeCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 704
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->nativeCallback:Lxcrash/ICrashCallback;

    return-object p0
.end method

.method public setNativeDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 658
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreads:Z

    return-object p0
.end method

.method public setNativeDumpAllThreadsCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 673
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsCountMax:I

    return-object p0
.end method

.method public setNativeDumpAllThreadsWhiteList([Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 692
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsWhiteList:[Ljava/lang/String;

    return-object p0
.end method

.method public setNativeDumpElfHash(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 609
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpElfHash:Z

    return-object p0
.end method

.method public setNativeDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 633
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpFds:Z

    return-object p0
.end method

.method public setNativeDumpMap(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 621
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpMap:Z

    return-object p0
.end method

.method public setNativeDumpNetwork(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 645
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpNetworkInfo:Z

    return-object p0
.end method

.method public setNativeLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 561
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogCountMax:I

    return-object p0
.end method

.method public setNativeLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 585
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatEventsLines:I

    return-object p0
.end method

.method public setNativeLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 597
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatMainLines:I

    return-object p0
.end method

.method public setNativeLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 573
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatSystemLines:I

    return-object p0
.end method

.method public setNativeRethrow(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 549
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeRethrow:Z

    return-object p0
.end method

.method public setPlaceholderCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 310
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->placeholderCountMax:I

    return-object p0
.end method

.method public setPlaceholderSizeKb(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 322
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->placeholderSizeKb:I

    return-object p0
.end method
