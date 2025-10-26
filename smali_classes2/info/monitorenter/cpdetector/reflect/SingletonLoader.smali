.class public final Linfo/monitorenter/cpdetector/reflect/SingletonLoader;
.super Ljava/lang/Object;
.source "SingletonLoader.java"


# static fields
.field private static instance:Linfo/monitorenter/cpdetector/reflect/SingletonLoader;


# instance fields
.field private dummyParameters:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->dummyParameters:[Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/reflect/SingletonLoader;
    .locals 1

    .line 92
    sget-object v0, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->instance:Linfo/monitorenter/cpdetector/reflect/SingletonLoader;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->instance:Linfo/monitorenter/cpdetector/reflect/SingletonLoader;

    .line 95
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->instance:Linfo/monitorenter/cpdetector/reflect/SingletonLoader;

    return-object v0
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 119
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 120
    aget-object v5, v0, v3

    .line 121
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 128
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 130
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "instance"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 134
    :try_start_0
    iget-object v6, p0, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->dummyParameters:[Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 145
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    .line 143
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v5

    .line 138
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_4

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 159
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 160
    aget-object v2, v0, v1

    .line 161
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3

    .line 163
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-nez v3, :cond_2

    .line 167
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 170
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_3
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    .line 178
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no singleton method, no public default constructor."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-object v4
.end method

.method public newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
