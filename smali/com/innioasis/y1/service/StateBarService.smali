.class public final Lcom/innioasis/y1/service/StateBarService;
.super Landroid/app/Service;
.source "StateBarService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/service/StateBarService$CallbackBinder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0004\u0018\u00002\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/innioasis/y1/service/StateBarService;",
        "Landroid/app/Service;",
        "()V",
        "receiver",
        "com/innioasis/y1/service/StateBarService$receiver$2$1",
        "getReceiver",
        "()Lcom/innioasis/y1/service/StateBarService$receiver$2$1;",
        "receiver$delegate",
        "Lkotlin/Lazy;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "",
        "onDestroy",
        "CallbackBinder",
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
.field private final receiver$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    sget-object v0, Lcom/innioasis/y1/service/StateBarService$receiver$2;->INSTANCE:Lcom/innioasis/y1/service/StateBarService$receiver$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/service/StateBarService;->receiver$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getReceiver()Lcom/innioasis/y1/service/StateBarService$receiver$2$1;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/innioasis/y1/service/StateBarService;->receiver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/service/StateBarService$receiver$2$1;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 58
    new-instance p1, Lcom/innioasis/y1/service/StateBarService$CallbackBinder;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/service/StateBarService$CallbackBinder;-><init>(Lcom/innioasis/y1/service/StateBarService;)V

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "StateBarService  onCreate "

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/innioasis/y1/service/StateBarService;->getReceiver()Lcom/innioasis/y1/service/StateBarService$receiver$2$1;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/innioasis/y1/service/StateBarService;->getReceiver()Lcom/innioasis/y1/service/StateBarService$receiver$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/service/StateBarService$receiver$2$1;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/service/StateBarService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    invoke-direct {p0}, Lcom/innioasis/y1/service/StateBarService;->getReceiver()Lcom/innioasis/y1/service/StateBarService$receiver$2$1;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/StateBarService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
