.class public final Lcom/innioasis/y1/utils/SDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/utils/SDReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u001c\u0010\t\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/SDReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "handler",
        "com/innioasis/y1/utils/SDReceiver$handler$1",
        "Lcom/innioasis/y1/utils/SDReceiver$handler$1;",
        "clearNowPlaying",
        "",
        "delayRunRefreshDB",
        "onReceive",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field public static final Companion:Lcom/innioasis/y1/utils/SDReceiver$Companion;


# instance fields
.field private final handler:Lcom/innioasis/y1/utils/SDReceiver$handler$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/utils/SDReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/utils/SDReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/utils/SDReceiver;->Companion:Lcom/innioasis/y1/utils/SDReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/utils/SDReceiver$handler$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1/utils/SDReceiver$handler$1;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/innioasis/y1/utils/SDReceiver;->handler:Lcom/innioasis/y1/utils/SDReceiver$handler$1;

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/innioasis/y1/utils/SDReceiver;)Lcom/innioasis/y1/utils/SDReceiver$handler$1;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/innioasis/y1/utils/SDReceiver;->handler:Lcom/innioasis/y1/utils/SDReceiver$handler$1;

    return-object p0
.end method

.method private final clearNowPlaying()V
    .locals 9

    .line 82
    new-instance v0, Lcom/innioasis/y1/utils/SDReceiver$clearNowPlaying$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/utils/SDReceiver$clearNowPlaying$1;-><init>(Lcom/innioasis/y1/utils/SDReceiver;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method private final delayRunRefreshDB()V
    .locals 10

    .line 56
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getWasUnmounted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Global;->setRefreshDatabaseState(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 59
    sget-object v0, Lcom/innioasis/y1/utils/SDReceiver$delayRunRefreshDB$1;->INSTANCE:Lcom/innioasis/y1/utils/SDReceiver$delayRunRefreshDB$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 24
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x6342a1e0

    const-string v1, "playlist11"

    const/4 v2, 0x0

    if-eq p2, v0, :cond_5

    const v0, -0x5a4113c8

    const-string v3, "opop"

    const/4 v4, 0x1

    if-eq p2, v0, :cond_3

    const v0, -0x39738481

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 41
    :cond_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "unmounted"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1, v4}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setWasUnmounted(Z)V

    .line 43
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1, v2}, Lcom/innioasis/music/objects/Global;->setSdcardIsReady(Z)V

    .line 44
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isResetting2: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->isResetting()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1}, Lcom/innioasis/music/objects/Global;->isResetting()Z

    move-result p1

    if-nez p1, :cond_2

    .line 46
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1, v4}, Lcom/innioasis/music/objects/Global;->setRefreshDatabaseState(Z)V

    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1/utils/SDReceiver;->clearNowPlaying()V

    goto :goto_0

    :cond_3
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "mount"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1, v4}, Lcom/innioasis/music/objects/Global;->setSdcardIsReady(Z)V

    .line 28
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isResetting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->isResetting()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/innioasis/y1/utils/SDReceiver;->Companion:Lcom/innioasis/y1/utils/SDReceiver$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SDReceiver$Companion;->isSdcard()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1}, Lcom/innioasis/music/objects/Global;->isResetting()Z

    move-result p1

    if-nez p1, :cond_7

    .line 32
    invoke-direct {p0}, Lcom/innioasis/y1/utils/SDReceiver;->delayRunRefreshDB()V

    goto :goto_0

    :cond_5
    const-string p2, "android.intent.action.MEDIA_REMOVED"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 37
    :cond_6
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "remove"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method
