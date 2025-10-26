.class public final Lcom/innioasis/y1/activity/WallpaperActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "WallpaperActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/WallpaperActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000*\u0001\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0017J\u0008\u0010\u000e\u001a\u00020\rH\u0017J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0016J\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/WallpaperActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;",
        "()V",
        "adapter",
        "com/innioasis/y1/activity/WallpaperActivity$adapter$2$1",
        "getAdapter",
        "()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getPicture",
        "getViewBinding",
        "initView",
        "longConfirm",
        "quit",
        "save",
        "path",
        "",
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

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public static synthetic $r8$lambda$XKcrKc_2FD8pdgKi544RrOkIeB0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity;->getPicture$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2;-><init>(Lcom/innioasis/y1/activity/WallpaperActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/y1/activity/WallpaperActivity;)Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/innioasis/y1/activity/WallpaperActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/innioasis/y1/activity/WallpaperActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private final getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    return-object v0
.end method

.method private final getPicture()V
    .locals 8

    .line 81
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110197

    .line 82
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const v2, 0x7f1100b2

    .line 83
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "show(\n            contex\u2026          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "progressDialog"

    .line 87
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v2, Lcom/innioasis/y1/activity/WallpaperActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/innioasis/y1/activity/WallpaperActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 92
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 93
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 94
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2;

    invoke-direct {v0, p0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2;-><init>(Lcom/innioasis/y1/activity/WallpaperActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final getPicture$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public antiClockwise()V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 150
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/WallpaperActivity;->setMark(I)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 154
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;->notifyItemChanged(I)V

    return-void
.end method

.method public clockwise()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 138
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/WallpaperActivity;->setMark(I)V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 143
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public confirm()V
    .locals 7

    .line 166
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11019a

    .line 167
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const v2, 0x7f11019c

    .line 168
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 165
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "show(\n            contex\u2026          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 174
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/y1/activity/WallpaperActivity$confirm$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/innioasis/y1/activity/WallpaperActivity$confirm$1;-><init>(Lcom/innioasis/y1/activity/WallpaperActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/innioasis/y1/activity/WallpaperActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityWallpaperBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getPicture()V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final save(Ljava/lang/String;)V
    .locals 8

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 226
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;

    const/4 v4, 0x0

    invoke-direct {v1, v0, p1, p0, v4}, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;-><init>(ILjava/lang/String;Lcom/innioasis/y1/activity/WallpaperActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
