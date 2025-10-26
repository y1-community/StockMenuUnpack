.class public final Lcom/innioasis/y1_eBook/ui/text/TextActivity;
.super Lcom/innioasis/y1_eBook/base/BaseActivity;
.source "TextActivity.kt"

# interfaces
.implements Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;
.implements Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;
.implements Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/text/TextActivity$Companion;,
        Lcom/innioasis/y1_eBook/ui/text/TextActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBookTextBinding;",
        "Lcom/innioasis/y1_eBook/ui/text/TextViewModel;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent;",
        ">;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextActivity.kt\ncom/innioasis/y1_eBook/ui/text/TextActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,396:1\n75#2,13:397\n*S KotlinDebug\n*F\n+ 1 TextActivity.kt\ncom/innioasis/y1_eBook/ui/text/TextActivity\n*L\n33#1:397,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 E2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u00062\u00020\u00072\u00020\u0008:\u0001EB\u0005\u00a2\u0006\u0002\u0010\tJ\u0008\u0010,\u001a\u00020-H\u0002J\u0008\u0010.\u001a\u00020-H\u0016J\u0010\u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\u0004H\u0016J\u0018\u00101\u001a\u00020-2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\rH\u0016J\u0010\u00105\u001a\u00020\r2\u0006\u00106\u001a\u000207H\u0016J\u0008\u00108\u001a\u00020-H\u0016J\u0008\u00109\u001a\u00020-H\u0016J\u0008\u0010:\u001a\u00020-H\u0016J\u0010\u0010;\u001a\u00020-2\u0006\u00102\u001a\u000203H\u0016J\u0008\u0010<\u001a\u00020-H\u0016J\u0008\u0010=\u001a\u00020-H\u0014J\u0008\u0010>\u001a\u00020-H\u0016J\u0010\u0010?\u001a\u00020-2\u0006\u0010@\u001a\u00020AH\u0016J\u0008\u0010B\u001a\u00020\u0002H\u0016J\u0008\u0010C\u001a\u00020-H\u0002J\u0008\u0010@\u001a\u00020-H\u0016J\u0008\u0010D\u001a\u00020-H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0013\u001a\u0004\u0008 \u0010!R\u001b\u0010#\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0013\u001a\u0004\u0008%\u0010&R\u001b\u0010(\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u0013\u001a\u0004\u0008)\u0010*\u00a8\u0006F"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/text/TextActivity;",
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBookTextBinding;",
        "Lcom/innioasis/y1_eBook/ui/text/TextViewModel;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;",
        "Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;",
        "()V",
        "bookId",
        "",
        "isShowEndOfNovelDialog",
        "",
        "loadingDialog",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "getLoadingDialog",
        "()Lcom/innioasis/y1/utils/LoadingDialog;",
        "loadingDialog$delegate",
        "Lkotlin/Lazy;",
        "markDialog",
        "Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;",
        "getMarkDialog",
        "()Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;",
        "markDialog$delegate",
        "readingSettingsDialog",
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;",
        "getReadingSettingsDialog",
        "()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;",
        "readingSettingsDialog$delegate",
        "textAdapter",
        "Lcom/innioasis/y1_eBook/ui/text/TextAdapter;",
        "getTextAdapter",
        "()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;",
        "textAdapter$delegate",
        "themeDialog",
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;",
        "getThemeDialog",
        "()Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;",
        "themeDialog$delegate",
        "vm",
        "getVm",
        "()Lcom/innioasis/y1_eBook/ui/text/TextViewModel;",
        "vm$delegate",
        "addListener",
        "",
        "addMark",
        "collect",
        "s",
        "deleteBookMark",
        "bookMark",
        "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
        "isAll",
        "direction",
        "d",
        "Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;",
        "fontBig",
        "fontSmall",
        "initView",
        "jumpBookMark",
        "markList",
        "onDestroy",
        "openChapter",
        "setTheme",
        "theme",
        "Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;",
        "setViewBinding",
        "showEndOfNovelRereadDialog",
        "upDateTheme",
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
.field public static final Companion:Lcom/innioasis/y1_eBook/ui/text/TextActivity$Companion;

.field public static final EXTRA_BOOK_ID:Ljava/lang/String; = "extra_book_id"

.field public static final EXTRA_BOOK_NAME:Ljava/lang/String; = "extra_book_name"


# instance fields
.field private bookId:I

.field private isShowEndOfNovelDialog:Z

.field private final loadingDialog$delegate:Lkotlin/Lazy;

.field private final markDialog$delegate:Lkotlin/Lazy;

.field private final readingSettingsDialog$delegate:Lkotlin/Lazy;

.field private final textAdapter$delegate:Lkotlin/Lazy;

.field private final themeDialog$delegate:Lkotlin/Lazy;

.field private final vm$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->Companion:Lcom/innioasis/y1_eBook/ui/text/TextActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 31
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;-><init>()V

    .line 33
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 401
    new-instance v1, Lcom/innioasis/y1_eBook/ui/text/TextActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 405
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 407
    new-instance v4, Lcom/innioasis/y1_eBook/ui/text/TextActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 409
    new-instance v5, Lcom/innioasis/y1_eBook/ui/text/TextActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 405
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 33
    iput-object v2, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->vm$delegate:Lkotlin/Lazy;

    .line 44
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$loadingDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$loadingDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$readingSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$readingSettingsDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->readingSettingsDialog$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$themeDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$themeDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->themeDialog$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$markDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$markDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->markDialog$delegate:Lkotlin/Lazy;

    .line 52
    sget-object v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$textAdapter$2;->INSTANCE:Lcom/innioasis/y1_eBook/ui/text/TextActivity$textAdapter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->textAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$addListener(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->addListener()V

    return-void
.end method

.method public static final synthetic access$getBookId$p(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->bookId:I

    return p0
.end method

.method public static final synthetic access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p0

    return-object p0
.end method

.method private final addListener()V
    .locals 9

    .line 219
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    new-instance v8, Lcom/innioasis/y1_eBook/utils/recycler/OnReachEdgeListener;

    .line 219
    new-instance v1, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$1;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;

    invoke-direct {v1, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;

    invoke-direct {v1, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    .line 220
    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1_eBook/utils/recycler/OnReachEdgeListener;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 219
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private final getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final getMarkDialog()Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->markDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    return-object v0
.end method

.method private final getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->readingSettingsDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    return-object v0
.end method

.method private final getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->textAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    return-object v0
.end method

.method private final getThemeDialog()Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->themeDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;

    return-object v0
.end method

.method private final showEndOfNovelRereadDialog()V
    .locals 9

    .line 285
    iget-boolean v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->isShowEndOfNovelDialog:Z

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v0, Lcom/innioasis/y1/utils/DialogUtil;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v1, 0x7f110047

    .line 289
    invoke-virtual {p0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.book_end_of_novel)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/innioasis/y1_eBook/ui/text/TextActivity$showEndOfNovelRereadDialog$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$showEndOfNovelRereadDialog$1;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, ""

    move-object v1, v0

    .line 288
    invoke-static/range {v1 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private final upDateTheme()V
    .locals 3

    .line 274
    sget-object v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->INSTANCE:Lcom/innioasis/y1_eBook/utils/EbookSpUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->getTheme()Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    move-result-object v0

    .line 275
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->setTextColor(I)V

    .line 276
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->notifyDataSetChanged()V

    .line 277
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public addMark()V
    .locals 15

    .line 328
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "vb.recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->getFirstCompletelyVisiblePosition(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 329
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v0, v2}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getViewByPosition(II)Landroid/view/View;

    move-result-object v1

    .line 330
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u5f53\u524d\u7b2c\u4e00\u4e2a\u53ef\u89c1\u7684item  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    .line 338
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    aget v5, v2, v3

    add-int/lit8 v5, v5, -0x2d

    invoke-static {v1, v5}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->getClosestLineText(Landroid/widget/TextView;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v10, v1

    .line 339
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    .line 342
    new-instance v1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    const/4 v6, 0x0

    .line 343
    iget v7, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->bookId:I

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/text/TextItem;->getStartIndex()I

    move-result v8

    aget v9, v2, v3

    const-wide/16 v11, 0x0

    const/16 v13, 0x21

    const/4 v14, 0x0

    move-object v5, v1

    .line 342
    invoke-direct/range {v5 .. v14}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;-><init>(IIIILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 346
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveBookMark;

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveBookMark;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    .line 348
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseState;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->collect(Lcom/innioasis/y1_eBook/ui/text/TextState;)V

    return-void
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/text/TextState;)V
    .locals 7

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;->getToast()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_0
    sget-object v0, Lcom/innioasis/y1_eBook/ui/text/TextState$EndLoading;->INSTANCE:Lcom/innioasis/y1_eBook/ui/text/TextState$EndLoading;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    goto/16 :goto_0

    .line 161
    :cond_1
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/text/TextState$StartLoading;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextState$StartLoading;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$StartLoading;->getTip()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_2
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/text/TextState$InitBookSuccess;

    if-eqz v0, :cond_3

    .line 167
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$collect$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$collect$1;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;Lcom/innioasis/y1_eBook/ui/text/TextState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    .line 181
    :cond_3
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/text/TextState$GetNextContentSuccess;

    const-string v1, " \u5269\u4f59 "

    const/4 v2, 0x0

    const/16 v3, 0x12c

    if-eqz v0, :cond_4

    .line 182
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    .line 183
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextState$GetNextContentSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetNextContentSuccess;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->addData(Ljava/util/Collection;)V

    .line 186
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result p1

    if-le p1, v3, :cond_7

    .line 187
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    .line 189
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->removeRange(II)V

    .line 190
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6279\u91cf\u5220\u9664\u4e0a\u90e8\u5206 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    :cond_4
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/text/TextState$GetLastContentSuccess;

    if-eqz v0, :cond_5

    .line 196
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextState$GetLastContentSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetLastContentSuccess;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, v2, p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->addData(ILjava/util/Collection;)V

    .line 198
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result p1

    if-le p1, v3, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    .line 201
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v0, v3, p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->removeRange(II)V

    .line 202
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6279\u91cf\u5220\u9664\u4e0b\u90e8\u5206 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_5
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;

    if-eqz v0, :cond_7

    .line 208
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f11004f

    .line 209
    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->showToast(Ljava/lang/String;)V

    .line 211
    :cond_6
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getMarkDialog()Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->show()V

    .line 213
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getMarkDialog()Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    move-result-object v0

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->setList(Ljava/util/List;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public deleteBookMark(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Z)V
    .locals 1

    const-string v0, "bookMark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;

    invoke-direct {v0, p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Z)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method

.method public direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z
    .locals 4

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const/16 v2, 0x15

    if-eq p1, v2, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, -0x1e

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x1e

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 133
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    if-eqz p1, :cond_4

    .line 135
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    if-eqz v2, :cond_8

    .line 137
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_8

    if-nez v3, :cond_5

    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_8

    .line 141
    :goto_2
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->showEndOfNovelRereadDialog()V

    goto :goto_3

    .line 111
    :cond_6
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->show()V

    goto :goto_3

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->finish()V

    :cond_8
    :goto_3
    return v1

    .line 96
    :cond_9
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x12c

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v0

    .line 90
    :cond_a
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, -0x12c

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v0
.end method

.method public fontBig()V
    .locals 3

    .line 358
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getTextSize()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->setTextSize(I)V

    .line 359
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 360
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 361
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getTextSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setBookFontSizeTxt(I)V

    return-void
.end method

.method public fontSmall()V
    .locals 3

    .line 366
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getTextSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->setTextSize(I)V

    .line 367
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 368
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 370
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getTextSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setBookFontSizeTxt(I)V

    return-void
.end method

.method public bridge synthetic getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVm()Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseViewModel;

    return-object v0
.end method

.method public getVm()Lcom/innioasis/y1_eBook/ui/text/TextViewModel;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->vm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    return-object v0
.end method

.method public initView()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_book_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->bookId:I

    .line 57
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_book_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 59
    :cond_0
    new-instance v1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$InitBook;

    iget v2, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->bookId:I

    invoke-direct {v1, v2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$InitBook;-><init>(I)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getTextAdapter()Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getBookFontSizeTxt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->setTextSize(I)V

    .line 71
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->upDateTheme()V

    return-void
.end method

.method public jumpBookMark(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;)V
    .locals 3

    const-string v0, "bookMark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->dismiss()V

    .line 387
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u4e66\u7b7e  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;

    invoke-direct {v0, p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method

.method public markList()V
    .locals 2

    .line 353
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetBookMarkList;

    iget v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->bookId:I

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetBookMarkList;-><init>(I)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;->onDestroy()V

    .line 267
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getReadingSettingsDialog()Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->dismiss()V

    return-void
.end method

.method public openChapter()V
    .locals 9

    .line 310
    new-instance v6, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f110053

    .line 311
    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(R.string.book_only_epub_chapter)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$openChapter$1;

    invoke-direct {v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$openChapter$1;-><init>()V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v0, v6

    move v6, v7

    move-object v7, v8

    .line 310
    invoke-static/range {v0 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitleOnlyOneButton$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public setTheme(Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;)V
    .locals 1

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->upDateTheme()V

    return-void
.end method

.method public bridge synthetic setViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookTextBinding;
    .locals 2

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->setTransparent(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBookTextBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBookTextBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public theme()V
    .locals 1

    .line 375
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->getThemeDialog()Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->show()V

    return-void
.end method
