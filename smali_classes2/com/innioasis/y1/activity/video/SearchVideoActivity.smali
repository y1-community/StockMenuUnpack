.class public final Lcom/innioasis/y1/activity/video/SearchVideoActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "SearchVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;,
        Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;,
        Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;,
        Lcom/innioasis/y1/activity/video/SearchVideoActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivitySearchBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchVideoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchVideoActivity.kt\ncom/innioasis/y1/activity/video/SearchVideoActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,465:1\n1851#2,2:466\n37#3:468\n36#3,3:469\n*S KotlinDebug\n*F\n+ 1 SearchVideoActivity.kt\ncom/innioasis/y1/activity/video/SearchVideoActivity\n*L\n112#1:466,2\n427#1:468\n427#1:469,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003<=>B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020%H\u0016J\u0008\u0010\'\u001a\u00020%H\u0016J\u0012\u0010(\u001a\u00020%2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0002J\u0010\u0010+\u001a\u00020%2\u0006\u0010,\u001a\u00020-H\u0016J\u0008\u0010.\u001a\u00020\u0002H\u0016J\u0008\u0010/\u001a\u00020%H\u0016J\u0008\u00100\u001a\u00020%H\u0016J\"\u00101\u001a\u00020%2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002032\u0008\u00105\u001a\u0004\u0018\u000106H\u0014J\u0008\u00107\u001a\u00020%H\u0014J\u0008\u00108\u001a\u00020%H\u0016J\u0010\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020\u001fH\u0002J\u0010\u0010;\u001a\u00020%2\u0006\u0010:\u001a\u00020\u001fH\u0002R\u001f\u0010\u0004\u001a\u00060\u0005R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\t\u001a\u0004\u0008\u001a\u0010\u001bR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006?"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivitySearchBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;",
        "getAdapter",
        "()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "getAnimator",
        "()Landroid/animation/ValueAnimator;",
        "animator$delegate",
        "inputMethodDialog",
        "Lcom/innioasis/y1/utils/InputMethodDialog;",
        "getInputMethodDialog",
        "()Lcom/innioasis/y1/utils/InputMethodDialog;",
        "inputMethodDialog$delegate",
        "isMultiSelect",
        "",
        "searchJob",
        "Lkotlinx/coroutines/Job;",
        "subMenuDialog",
        "Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;",
        "getSubMenuDialog",
        "()Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;",
        "subMenuDialog$delegate",
        "valueLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getValueLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setValueLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "confirmItem",
        "item",
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onResume",
        "quit",
        "refreshList",
        "searchKey",
        "searchFun",
        "Item",
        "MyAdapter",
        "MyViewHolder",
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


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;

.field private final animator$delegate:Lkotlin/Lazy;

.field private final inputMethodDialog$delegate:Lkotlin/Lazy;

.field private isMultiSelect:Z

.field private searchJob:Lkotlinx/coroutines/Job;

.field private final subMenuDialog$delegate:Lkotlin/Lazy;

.field public valueLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$oSazAkvmG684tfklLgUBDzWHPHc(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->initView$lambda-0(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$adapter$2;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 56
    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$inputMethodDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$inputMethodDialog$2;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->inputMethodDialog$delegate:Lkotlin/Lazy;

    .line 144
    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    .line 433
    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->animator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnimator(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$searchFun(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->searchFun(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->isMultiSelect:Z

    return-void
.end method

.method private final confirmItem(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;)V
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getVideoInfo()Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getVideoInfo()Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 427
    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 471
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    const-string v1, "playList"

    .line 427
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->show()V

    :cond_1
    return-void
.end method

.method private final getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    return-object v0
.end method

.method private final getAnimator()Landroid/animation/ValueAnimator;
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->animator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-animator>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->inputMethodDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/InputMethodDialog;

    return-object v0
.end method

.method private final getSubMenuDialog()Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const-string v1, "it"

    .line 79
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const v1, 0x7f11012c

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11012f

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, p1}, Lcom/innioasis/music/objects/Global;->setSearchKey(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyItemChanged(I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->refreshList(Ljava/lang/String;)V

    return-void
.end method

.method private final refreshList(Ljava/lang/String;)V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->searchJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 98
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$refreshList$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$refreshList$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->searchJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final searchFun(Ljava/lang/String;)V
    .locals 5

    .line 106
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "searchTag"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u6267\u884c\u641c\u7d22 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 108
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/innioasis/y1/database/Y1Repository;->searchByKeyword(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 111
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchFun list.size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    check-cast p1, Ljava/lang/Iterable;

    .line 466
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/database/video/VideoInfo;

    .line 114
    new-instance v2, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3, v4}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;-><init>(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->setItemList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 127
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.searchList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->toPrevious(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 123
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.searchList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public confirm()V
    .locals 6

    .line 135
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->isMultiSelect:Z

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    .line 137
    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->confirmItem(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->addOrRemoveMultiSelectIndex$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;IZILjava/lang/Object;)V

    .line 140
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "vb.searchList"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->toNext$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 270
    iget-boolean p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->isMultiSelect:Z

    if-eqz p1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 272
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 273
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->isMultiSelect:Z

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->finish()V

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method public final getValueLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "valueLiveData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivitySearchBinding;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 5

    const v0, 0x7f110130

    .line 70
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.music_search)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 73
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 74
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "vb.searchList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->toPrevious$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const v1, 0x7f11012c

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/InputMethodDialog;->show()V

    .line 77
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getValueLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/innioasis/y1/activity/video/SearchVideoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 84
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getSearchKey()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getValueLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Global;->getSearchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object v0

    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Global;->getSearchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/InputMethodDialog;->setEditText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public longConfirm()V
    .locals 3

    .line 260
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getSubMenuDialog()Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->show()V

    .line 262
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->addOrRemoveMultiSelectIndex(IZ)V

    .line 263
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 404
    invoke-super {p0, p1, p2, p3}, Lcom/innioasis/y1/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x400

    if-ne p2, p1, :cond_2

    .line 408
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result p2

    if-lt p1, p2, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2, p3}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->setSelectPosition$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;IZILjava/lang/Object;)V

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 413
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getAdapter()Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final setValueLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
