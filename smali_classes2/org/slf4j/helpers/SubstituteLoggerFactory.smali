.class public Lorg/slf4j/helpers/SubstituteLoggerFactory;
.super Ljava/lang/Object;
.source "SubstituteLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field final loggerNameList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object p1, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-object p1

    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getLoggerNameList()Ljava/util/List;
    .locals 3

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v2, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
