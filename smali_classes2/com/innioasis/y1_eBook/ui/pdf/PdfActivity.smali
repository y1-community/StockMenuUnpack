.class public final Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;
.super Lcom/innioasis/y1_eBook/base/BaseActivity;
.source "PdfActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$Companion;,
        Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfState;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfActivity.kt\ncom/innioasis/y1_eBook/ui/pdf/PdfActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,123:1\n75#2,13:124\n*S KotlinDebug\n*F\n+ 1 PdfActivity.kt\ncom/innioasis/y1_eBook/ui/pdf/PdfActivity\n*L\n19#1:124,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001e2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0016J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u0014H\u0016J\u0008\u0010\u001d\u001a\u00020\u0002H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000f\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;",
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfState;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;",
        "()V",
        "canMove",
        "",
        "loadingDialog",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "getLoadingDialog",
        "()Lcom/innioasis/y1/utils/LoadingDialog;",
        "loadingDialog$delegate",
        "Lkotlin/Lazy;",
        "vm",
        "getVm",
        "()Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;",
        "vm$delegate",
        "collect",
        "",
        "s",
        "direction",
        "d",
        "Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;",
        "initPdf",
        "book",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "initView",
        "setViewBinding",
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
.field public static final Companion:Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$Companion;

.field public static final EXTRA_BOOK_ID:Ljava/lang/String; = "extra_book_id"

.field public static final EXTRA_BOOK_NAME:Ljava/lang/String; = "extra_book_name"


# instance fields
.field private canMove:Z

.field private final loadingDialog$delegate:Lkotlin/Lazy;

.field private final vm$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->Companion:Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 18
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;-><init>()V

    .line 19
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 128
    new-instance v1, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 132
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 134
    new-instance v4, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 136
    new-instance v5, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 132
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 19
    iput-object v2, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->vm$delegate:Lkotlin/Lazy;

    .line 28
    new-instance v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$loadingDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$loadingDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCanMove$p(Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->canMove:Z

    return p0
.end method

.method public static final synthetic access$setCanMove$p(Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->canMove:Z

    return-void
.end method

.method private final getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final initPdf(Lcom/innioasis/y1_eBook/data/database/entities/Book;)V
    .locals 4

    .line 115
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "book.path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 117
    invoke-virtual {p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const/16 v0, 0x8

    .line 118
    invoke-virtual {p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseState;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->collect(Lcom/innioasis/y1_eBook/ui/pdf/PdfState;)V

    return-void
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/pdf/PdfState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$Toast;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$Toast;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$Toast;->getToast()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$EndLoading;->INSTANCE:Lcom/innioasis/y1_eBook/ui/pdf/PdfState$EndLoading;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    goto :goto_0

    .line 105
    :cond_1
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$StartLoading;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$StartLoading;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$StartLoading;->getTip()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$InitBookSuccess;

    if-eqz v0, :cond_3

    .line 109
    check-cast p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$InitBookSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$InitBookSuccess;->getBook()Lcom/innioasis/y1_eBook/data/database/entities/Book;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->initPdf(Lcom/innioasis/y1_eBook/data/database/entities/Book;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z
    .locals 8

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$direction$2;

    invoke-direct {p1, p0, v1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$direction$2;-><init>(Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 77
    :cond_1
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$direction$1;

    invoke-direct {p1, p0, v1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity$direction$1;-><init>(Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->finish()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->getVm()Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseViewModel;

    return-object v0
.end method

.method public getVm()Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->vm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;

    return-object v0
.end method

.method public initView()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_book_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    new-instance v1, Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent$InitBook;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent$InitBook;-><init>(I)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method

.method public bridge synthetic setViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBookPdfBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
