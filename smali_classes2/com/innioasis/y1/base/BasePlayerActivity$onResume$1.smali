.class final Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BasePlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getProgressThreadFlag$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getProgressState()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getHandler$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->sendEmptyMessage(I)Z

    const-wide/16 v0, 0x3e8

    .line 524
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getHandler$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->sendEmptyMessage(I)Z

    const-wide/16 v0, 0x64

    .line 530
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    return-void
.end method
