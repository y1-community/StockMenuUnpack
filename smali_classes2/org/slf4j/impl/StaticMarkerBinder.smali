.class public Lorg/slf4j/impl/StaticMarkerBinder;
.super Ljava/lang/Object;
.source "StaticMarkerBinder.java"

# interfaces
.implements Lorg/slf4j/spi/MarkerFactoryBinder;


# static fields
.field public static final SINGLETON:Lorg/slf4j/impl/StaticMarkerBinder;

.field static synthetic class$org$slf4j$helpers$BasicMarkerFactory:Ljava/lang/Class;


# instance fields
.field final markerFactory:Lorg/slf4j/IMarkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/slf4j/impl/StaticMarkerBinder;

    invoke-direct {v0}, Lorg/slf4j/impl/StaticMarkerBinder;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->SINGLETON:Lorg/slf4j/impl/StaticMarkerBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/StaticMarkerBinder;->markerFactory:Lorg/slf4j/IMarkerFactory;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 65
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/slf4j/impl/StaticMarkerBinder;->markerFactory:Lorg/slf4j/IMarkerFactory;

    return-object v0
.end method

.method public getMarkerFactoryClassStr()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->class$org$slf4j$helpers$BasicMarkerFactory:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.slf4j.helpers.BasicMarkerFactory"

    invoke-static {v0}, Lorg/slf4j/impl/StaticMarkerBinder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->class$org$slf4j$helpers$BasicMarkerFactory:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
