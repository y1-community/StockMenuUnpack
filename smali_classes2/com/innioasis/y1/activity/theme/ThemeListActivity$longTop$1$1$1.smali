.class public final Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "ThemeListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->invoke(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    .line 492
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    .line 528
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public confirm()V
    .locals 7

    .line 494
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;

    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;-><init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
