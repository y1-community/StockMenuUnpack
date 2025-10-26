.class public final Lcom/innioasis/y1_eBook/ui/word/WordActivity;
.super Lcom/innioasis/y1_eBook/base/BaseActivity;
.source "WordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/word/WordActivity$Companion;,
        Lcom/innioasis/y1_eBook/ui/word/WordActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBookWordBinding;",
        "Lcom/innioasis/y1_eBook/ui/word/WordViewModel;",
        "Lcom/innioasis/y1_eBook/ui/word/WordState;",
        "Lcom/innioasis/y1_eBook/ui/word/WordIntent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordActivity.kt\ncom/innioasis/y1_eBook/ui/word/WordActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,203:1\n75#2,13:204\n*S KotlinDebug\n*F\n+ 1 WordActivity.kt\ncom/innioasis/y1_eBook/ui/word/WordActivity\n*L\n20#1:204,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001e2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0014H\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0012H\u0002R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/word/WordActivity;",
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBookWordBinding;",
        "Lcom/innioasis/y1_eBook/ui/word/WordViewModel;",
        "Lcom/innioasis/y1_eBook/ui/word/WordState;",
        "Lcom/innioasis/y1_eBook/ui/word/WordIntent;",
        "()V",
        "loadingDialog",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "getLoadingDialog",
        "()Lcom/innioasis/y1/utils/LoadingDialog;",
        "loadingDialog$delegate",
        "Lkotlin/Lazy;",
        "vm",
        "getVm",
        "()Lcom/innioasis/y1_eBook/ui/word/WordViewModel;",
        "vm$delegate",
        "zoom",
        "",
        "collect",
        "",
        "s",
        "direction",
        "",
        "d",
        "Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;",
        "initView",
        "setViewBinding",
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
.field public static final Companion:Lcom/innioasis/y1_eBook/ui/word/WordActivity$Companion;

.field public static final EXTRA_BOOK_ID:Ljava/lang/String; = "extra_book_id"


# instance fields
.field private final loadingDialog$delegate:Lkotlin/Lazy;

.field private final vm$delegate:Lkotlin/Lazy;

.field private zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1_eBook/ui/word/WordActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/ui/word/WordActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->Companion:Lcom/innioasis/y1_eBook/ui/word/WordActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 19
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;-><init>()V

    .line 20
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 208
    new-instance v1, Lcom/innioasis/y1_eBook/ui/word/WordActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 212
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/innioasis/y1_eBook/ui/word/WordViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 214
    new-instance v4, Lcom/innioasis/y1_eBook/ui/word/WordActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 216
    new-instance v5, Lcom/innioasis/y1_eBook/ui/word/WordActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 212
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 20
    iput-object v2, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->vm$delegate:Lkotlin/Lazy;

    .line 28
    new-instance v0, Lcom/innioasis/y1_eBook/ui/word/WordActivity$loadingDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity$loadingDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/word/WordActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final webViewScrollTo(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseState;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/innioasis/y1_eBook/ui/word/WordState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->collect(Lcom/innioasis/y1_eBook/ui/word/WordState;)V

    return-void
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/word/WordState;)V
    .locals 6

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/word/WordState$Toast;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/word/WordState$Toast;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/word/WordState$Toast;->getToast()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcom/innioasis/y1_eBook/ui/word/WordState$EndLoading;->INSTANCE:Lcom/innioasis/y1_eBook/ui/word/WordState$EndLoading;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    goto :goto_0

    .line 94
    :cond_1
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/word/WordState$StartLoading;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/word/WordState$StartLoading;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/word/WordState$StartLoading;->getTip()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/word/WordState$InitBookSuccess;

    if-eqz v0, :cond_3

    .line 97
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " s.info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/word/WordState$InitBookSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/word/WordState$InitBookSuccess;->getInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/innioasis/y1_eBook/ui/word/WordActivity$collect$1;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lcom/innioasis/y1_eBook/ui/word/WordActivity$collect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/innioasis/y1_eBook/ui/word/WordActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x1e

    .line 82
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->webViewScrollTo(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    .line 78
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->webViewScrollTo(I)V

    goto :goto_0

    .line 57
    :cond_2
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->zoom:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->zoom:I

    goto :goto_0

    .line 51
    :cond_3
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->zoom:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->zoom:I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->getVm()Lcom/innioasis/y1_eBook/ui/word/WordViewModel;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseViewModel;

    return-object v0
.end method

.method public getVm()Lcom/innioasis/y1_eBook/ui/word/WordViewModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->vm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/word/WordViewModel;

    return-object v0
.end method

.method public initView()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_book_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    new-instance v1, Lcom/innioasis/y1_eBook/ui/word/WordIntent$InitBook;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/word/WordIntent$InitBook;-><init>(I)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v1}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method

.method public bridge synthetic setViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookWordBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookWordBinding;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/word/WordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBookWordBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBookWordBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
