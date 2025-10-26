.class final Lcom/innioasis/y1/service/PlayerService$startFastForward$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/service/PlayerService;->startFastForward()V
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
.field final synthetic this$0:Lcom/innioasis/y1/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/service/PlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService$startFastForward$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 888
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService$startFastForward$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 889
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$startFastForward$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {v0}, Lcom/innioasis/y1/service/PlayerService;->access$getFastForwardLock$p(Lcom/innioasis/y1/service/PlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    .line 890
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 891
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$startFastForward$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    .line 893
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService$startFastForward$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/service/PlayerService;->setCurrentPosition(J)V

    goto :goto_0

    :cond_1
    return-void
.end method
