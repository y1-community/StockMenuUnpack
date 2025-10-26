.class final Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;->confirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.innioasis.y1.activity.SettingActivity$clickReset$1$confirm$1"
    f = "SettingActivity.kt"
    i = {}
    l = {
        0x48f,
        0x493
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/SettingActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/SettingActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;-><init>(Lcom/innioasis/y1/activity/SettingActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1154
    iget v1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1177
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1154
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1155
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1, v4}, Lcom/innioasis/music/objects/Global;->setResetting(Z)V

    .line 1156
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/SettingActivity;->access$resetAllSettings(Lcom/innioasis/y1/activity/SettingActivity;)V

    .line 1157
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/SettingActivity;->access$getWakeLock$p(Lcom/innioasis/y1/activity/SettingActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1158
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/PowerManager;

    .line 1159
    iget-object v1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const-string v5, "com.innioasis.y1:MyWakeLockTag2"

    invoke-virtual {p1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/innioasis/y1/activity/SettingActivity;->access$setWakeLock$p(Lcom/innioasis/y1/activity/SettingActivity;Landroid/os/PowerManager$WakeLock;)V

    .line 1163
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/SettingActivity;->access$getWakeLock$p(Lcom/innioasis/y1/activity/SettingActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1165
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/SettingActivity;->access$getWakeLock$p(Lcom/innioasis/y1/activity/SettingActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_4

    const-wide/16 v5, 0x2710

    invoke-virtual {p1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_4
    move-object p1, p0

    :cond_5
    const-wide/16 v5, 0xbb8

    .line 1167
    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p1, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->label:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    .line 1168
    :cond_6
    :goto_0
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v5, "opop"

    invoke-virtual {v1, v5}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v6}, Lcom/innioasis/music/objects/Global;->getSdcardIsReady()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Global;->getSdcardIsReady()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1171
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1$1;

    iget-object v4, p1, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1$1;-><init>(Lcom/innioasis/y1/activity/SettingActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p1, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;->label:I

    invoke-static {v1, v2, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 1177
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
