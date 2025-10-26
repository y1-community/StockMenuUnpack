.class public Lorg/slf4j/impl/SimpleLoggerFactory;
.super Ljava/lang/Object;
.source "SimpleLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# static fields
.field static final INSTANCE:Lorg/slf4j/impl/SimpleLoggerFactory;


# instance fields
.field loggerMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/slf4j/impl/SimpleLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/impl/SimpleLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/impl/SimpleLoggerFactory;->INSTANCE:Lorg/slf4j/impl/SimpleLoggerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 2

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lorg/slf4j/impl/SimpleLogger;

    invoke-direct {v0, p1}, Lorg/slf4j/impl/SimpleLogger;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
