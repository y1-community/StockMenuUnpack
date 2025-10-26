.class public abstract Lcom/ibm/icu/impl/ICUNotifier;
.super Ljava/lang/Object;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyLock:Ljava/lang/Object;

.field private notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract acceptsListener(Ljava/util/EventListener;)Z
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUNotifier;->acceptsListener(Ljava/util/EventListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    if-ne v2, p1, :cond_1

    .line 57
    monitor-exit v0

    return-void

    .line 62
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Listener invalid for this notifier."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public notifyChanged()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;-><init>(Lcom/ibm/icu/impl/ICUNotifier;)V

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->setDaemon(Z)V

    .line 106
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->start()V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/EventListener;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/EventListener;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue([Ljava/util/EventListener;)V

    .line 110
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract notifyListener(Ljava/util/EventListener;)V
.end method

.method public removeListener(Ljava/util/EventListener;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 85
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    .line 88
    :cond_1
    monitor-exit v0

    return-void

    .line 92
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
