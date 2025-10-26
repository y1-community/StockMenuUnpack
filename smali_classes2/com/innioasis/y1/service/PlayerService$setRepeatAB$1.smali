.class final Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/service/PlayerService;->setRepeatAB(JJ)V
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

    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 18

    move-object/from16 v0, p0

    .line 77
    :goto_0
    iget-object v1, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v1

    const/4 v2, 0x2

    const-wide/16 v3, 0x1f4

    const/16 v5, 0x3e8

    const-string v6, "ABRepeat"

    const/16 v7, 0x20

    const/4 v8, 0x0

    if-ne v1, v2, :cond_3

    .line 78
    iget-object v1, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v1

    .line 79
    sget-object v9, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v9, v6}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u590d\u8bfb\u4e2d2 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v12}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v9, v5

    .line 80
    rem-long v9, v1, v9

    sub-long/2addr v1, v9

    .line 81
    iget-object v5, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {v5}, Lcom/innioasis/y1/service/PlayerService;->access$getTemp2$p(Lcom/innioasis/y1/service/PlayerService;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v5}, Lcom/innioasis/y1/service/PlayerService;->getAPoint()J

    move-result-wide v9

    cmp-long v5, v1, v9

    if-ltz v5, :cond_0

    .line 82
    iget-object v5, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {v5, v8}, Lcom/innioasis/y1/service/PlayerService;->access$setTemp2$p(Lcom/innioasis/y1/service/PlayerService;Z)V

    .line 85
    :cond_0
    sget-object v5, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v5, v6}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v9}, Lcom/innioasis/y1/service/PlayerService;->getAPoint()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v7}, Lcom/innioasis/y1/service/PlayerService;->getBPoint()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v5, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v5}, Lcom/innioasis/y1/service/PlayerService;->getBPoint()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_1

    iget-object v5, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v5}, Lcom/innioasis/y1/service/PlayerService;->getAPoint()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {v1}, Lcom/innioasis/y1/service/PlayerService;->access$getTemp2$p(Lcom/innioasis/y1/service/PlayerService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    iget-object v5, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/innioasis/y1/service/PlayerService;->toRepeatStart$default(Lcom/innioasis/y1/service/PlayerService;IJILjava/lang/Object;)V

    .line 89
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 91
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 92
    iget-object v1, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v1

    int-to-long v9, v5

    .line 93
    rem-long v9, v1, v9

    sub-long/2addr v1, v9

    .line 94
    sget-object v9, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v9, v6}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u590d\u8bfb\u4e2d1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v11}, Lcom/innioasis/y1/service/PlayerService;->getAPoint()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v11}, Lcom/innioasis/y1/service/PlayerService;->getBPoint()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v9, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v9}, Lcom/innioasis/y1/service/PlayerService;->getAPoint()J

    move-result-wide v9

    cmp-long v11, v1, v9

    if-gez v11, :cond_4

    .line 96
    iget-object v12, v0, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/innioasis/y1/service/PlayerService;->toRepeatStart$default(Lcom/innioasis/y1/service/PlayerService;IJILjava/lang/Object;)V

    .line 98
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_5
    return-void
.end method
