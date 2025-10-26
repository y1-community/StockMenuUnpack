.class public Lorg/slf4j/impl/StaticMDCBinder;
.super Ljava/lang/Object;
.source "StaticMDCBinder.java"


# static fields
.field public static final SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;

.field static synthetic class$org$slf4j$helpers$NOPMDCAdapter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/slf4j/impl/StaticMDCBinder;

    invoke-direct {v0}, Lorg/slf4j/impl/StaticMDCBinder;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticMDCBinder;->SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 56
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
.method public getMDCA()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .line 52
    new-instance v0, Lorg/slf4j/helpers/NOPMDCAdapter;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPMDCAdapter;-><init>()V

    return-object v0
.end method

.method public getMDCAdapterClassStr()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/slf4j/impl/StaticMDCBinder;->class$org$slf4j$helpers$NOPMDCAdapter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.slf4j.helpers.NOPMDCAdapter"

    invoke-static {v0}, Lorg/slf4j/impl/StaticMDCBinder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/StaticMDCBinder;->class$org$slf4j$helpers$NOPMDCAdapter:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
