.class public final Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;
.super Lcom/innioasis/y1_eBook/base/BaseActivity;
.source "EpubActivity.kt"

# interfaces
.implements Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;
.implements Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$Callback;
.implements Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$Companion;,
        Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubState;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;",
        ">;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpubActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpubActivity.kt\ncom/innioasis/y1_eBook/ui/epub/EpubActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,335:1\n75#2,13:336\n*S KotlinDebug\n*F\n+ 1 EpubActivity.kt\ncom/innioasis/y1_eBook/ui/epub/EpubActivity\n*L\n32#1:336,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u0000 L2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u00062\u00020\u00072\u00020\u0008:\u0001LB\u0005\u00a2\u0006\u0002\u0010\tJ\u0008\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u0004H\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020)H\u0016J\u0008\u00101\u001a\u00020)H\u0016J\u0008\u00102\u001a\u00020)H\u0016J\u0008\u00103\u001a\u00020)H\u0002J\u0010\u00104\u001a\u00020)2\u0006\u00105\u001a\u000206H\u0016J\u0008\u00107\u001a\u00020)H\u0016J\u0008\u00108\u001a\u00020)H\u0016J\u0008\u00109\u001a\u00020)H\u0002J\u0010\u0010:\u001a\u00020)2\u0006\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020\u0002H\u0016J\u0008\u0010>\u001a\u00020)H\u0002J$\u0010?\u001a\u00020)2\u0006\u0010@\u001a\u00020A2\u0008\u0008\u0002\u0010B\u001a\u00020C2\u0008\u0008\u0002\u0010D\u001a\u00020CH\u0007J\u001e\u0010E\u001a\u00020)2\u0006\u0010F\u001a\u00020\u00112\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u0002060GH\u0002J\u0010\u0010H\u001a\u00020)2\u0006\u0010I\u001a\u00020CH\u0002J\u0008\u0010;\u001a\u00020)H\u0016J\u0010\u0010J\u001a\u00020)2\u0006\u0010K\u001a\u00020\u0011H\u0002R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u000f\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u000f\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u000f\u001a\u0004\u0008 \u0010!R\u001b\u0010#\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u000f\u001a\u0004\u0008$\u0010%R\u000e\u0010\'\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;",
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubState;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;",
        "()V",
        "chapterDialog",
        "Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;",
        "getChapterDialog",
        "()Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;",
        "chapterDialog$delegate",
        "Lkotlin/Lazy;",
        "fontSize",
        "",
        "info",
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;",
        "loadingDialog",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "getLoadingDialog",
        "()Lcom/innioasis/y1/utils/LoadingDialog;",
        "loadingDialog$delegate",
        "readingSettingsDialog",
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;",
        "getReadingSettingsDialog",
        "()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;",
        "readingSettingsDialog$delegate",
        "themeDialog",
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;",
        "getThemeDialog",
        "()Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;",
        "themeDialog$delegate",
        "vm",
        "getVm",
        "()Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;",
        "vm$delegate",
        "zoom",
        "addMark",
        "",
        "collect",
        "s",
        "direction",
        "",
        "d",
        "Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;",
        "fontBig",
        "fontSmall",
        "initView",
        "initWebView",
        "jumpChapter",
        "chapter",
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
        "markList",
        "openChapter",
        "setFontSize",
        "setTheme",
        "theme",
        "Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;",
        "setViewBinding",
        "setZoom",
        "setupWebView",
        "webView",
        "Landroid/webkit/WebView;",
        "textColor",
        "",
        "bgColor",
        "showChapter",
        "index",
        "",
        "showContent",
        "content",
        "webViewScrollTo",
        "y",
        "Companion",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$Companion;

.field public static final EXTRA_BOOK_ID:Ljava/lang/String; = "extra_book_id"

.field public static final EXTRA_BOOK_NAME:Ljava/lang/String; = "extra_book_name"


# instance fields
.field private final chapterDialog$delegate:Lkotlin/Lazy;

.field private fontSize:I

.field private info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

.field private final loadingDialog$delegate:Lkotlin/Lazy;

.field private final readingSettingsDialog$delegate:Lkotlin/Lazy;

.field private final themeDialog$delegate:Lkotlin/Lazy;

.field private final vm$delegate:Lkotlin/Lazy;

.field private zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->Companion:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 30
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;-><init>()V

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 340
    new-instance v1, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 344
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 346
    new-instance v4, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 348
    new-instance v5, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 344
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 32
    iput-object v2, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->vm$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$loadingDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$loadingDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    .line 44
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$readingSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$readingSettingsDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->readingSettingsDialog$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$chapterDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$chapterDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->chapterDialog$delegate:Lkotlin/Lazy;

    .line 49
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$themeDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$themeDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->themeDialog$delegate:Lkotlin/Lazy;

    .line 249
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getBookFontSizeEpub()I

    move-result v0

    iput v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    return-void
.end method

.method public static final synthetic access$getInfo$p(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getZoom$p(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->zoom:I

    return p0
.end method

.method public static final synthetic access$setFontSize(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setFontSize()V

    return-void
.end method

.method public static final synthetic access$setZoom(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setZoom()V

    return-void
.end method

.method private final getChapterDialog()Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->chapterDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;

    return-object v0
.end method

.method private final getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->readingSettingsDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    return-object v0
.end method

.method private final getThemeDialog()Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->themeDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;

    return-object v0
.end method

.method private final initWebView()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$2;

    invoke-direct {v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$2;-><init>()V

    check-cast v1, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 101
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method private final setFontSize()V
    .locals 3

    .line 268
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:document.body.style.fontSize=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "px\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    iget v1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setBookFontSizeEpub(I)V

    return-void
.end method

.method private final setZoom()V
    .locals 7

    .line 210
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->zoom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic setupWebView$default(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "#000000"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "#FFFFFF"

    .line 304
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setupWebView(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showChapter(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getChapterDialog()Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;->setList(ILjava/util/List;)V

    .line 284
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getChapterDialog()Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;->show()V

    return-void
.end method

.method private final showContent(Ljava/lang/String;)V
    .locals 7

    .line 186
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    .line 187
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final webViewScrollTo(I)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.scrollBy(0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addMark()V
    .locals 0

    return-void
.end method

.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseState;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->collect(Lcom/innioasis/y1_eBook/ui/epub/EpubState;)V

    return-void
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/epub/EpubState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;->getToast()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    sget-object v0, Lcom/innioasis/y1_eBook/ui/epub/EpubState$EndLoading;->INSTANCE:Lcom/innioasis/y1_eBook/ui/epub/EpubState$EndLoading;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    goto :goto_0

    .line 166
    :cond_1
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$StartLoading;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$StartLoading;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$StartLoading;->getTip()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$InitBookSuccess;

    if-eqz v0, :cond_3

    .line 169
    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$InitBookSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$InitBookSuccess;->getInfo()Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    goto :goto_0

    .line 172
    :cond_3
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterSuccess;

    if-eqz v0, :cond_4

    .line 173
    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterSuccess;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterSuccess;->getChapter()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->showChapter(ILjava/util/List;)V

    goto :goto_0

    .line 176
    :cond_4
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterContentSuccess;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterContentSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterContentSuccess;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->showContent(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z
    .locals 2

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x1e

    .line 154
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->webViewScrollTo(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    .line 150
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->webViewScrollTo(I)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->show()V

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->finish()V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_4
    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;

    invoke-direct {p1, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;-><init>(I)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return v0

    .line 112
    :cond_5
    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;

    const/4 v1, -0x1

    invoke-direct {p1, v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;-><init>(I)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return v0
.end method

.method public fontBig()V
    .locals 2

    .line 252
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    const/16 v1, 0x23

    if-le v0, v1, :cond_0

    .line 254
    iput v1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setFontSize()V

    return-void
.end method

.method public fontSmall()V
    .locals 2

    .line 260
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 262
    iput v1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->fontSize:I

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setFontSize()V

    return-void
.end method

.method public bridge synthetic getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVm()Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseViewModel;

    return-object v0
.end method

.method public getVm()Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->vm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;

    return-object v0
.end method

.method public initView()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_book_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    new-instance v1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$InitBook;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$InitBook;-><init>(I)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    .line 59
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->initWebView()V

    return-void
.end method

.method public jumpChapter(Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;)V
    .locals 1

    const-string v0, "chapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->getPosition()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;-><init>(I)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    .line 290
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->dismiss()V

    return-void
.end method

.method public markList()V
    .locals 0

    return-void
.end method

.method public openChapter()V
    .locals 1

    .line 236
    sget-object v0, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;->INSTANCE:Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method

.method public setTheme(Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;)V
    .locals 2

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    const-string v1, "vb.webView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->getTextColorStr()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->getBackgroundColorStr()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-virtual {p0, v0, v1, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setupWebView(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setupWebView(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgColor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 309
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 312
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setupWebView$1;

    invoke-direct {v0, p2, p3}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setupWebView$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public theme()V
    .locals 1

    .line 276
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getThemeDialog()Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->show()V

    return-void
.end method
