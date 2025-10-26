.class public final Lcom/innioasis/y1/activity/SplashActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "SplashActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivitySplashBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/SplashActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivitySplashBinding;",
        "()V",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "quit",
        "toMain",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$toMain(Lcom/innioasis/y1/activity/SplashActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SplashActivity;->toMain()V

    return-void
.end method

.method private final toMain()V
    .locals 3

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SplashActivity;->finish()V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 0

    return-void
.end method

.method public clockwise()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 0

    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SplashActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivitySplashBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivitySplashBinding;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SplashActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivitySplashBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivitySplashBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 7

    .line 23
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/innioasis/y1/activity/SplashActivity$initView$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/innioasis/y1/activity/SplashActivity$initView$1;-><init>(Lcom/innioasis/y1/activity/SplashActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

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
