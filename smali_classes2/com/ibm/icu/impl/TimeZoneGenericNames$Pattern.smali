.class public final enum Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum FALLBACK_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum REGION_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;


# instance fields
.field _defaultVal:Ljava/lang/String;

.field _key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 83
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    const-string v1, "REGION_FORMAT"

    const/4 v2, 0x0

    const-string v3, "regionFormat"

    const-string v4, "({0})"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    .line 90
    new-instance v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    const-string v3, "FALLBACK_FORMAT"

    const/4 v4, 0x1

    const-string v5, "fallbackFormat"

    const-string v6, "{1} ({0})"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 81
    sput-object v3, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;
    .locals 1

    .line 81
    const-class v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;
    .locals 1

    .line 81
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    return-object v0
.end method


# virtual methods
.method defaultValue()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    return-object v0
.end method

.method key()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    return-object v0
.end method
