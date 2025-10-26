.class public final enum Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListGenderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

.field public static final enum MALE_TAINTS:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIXED_NEUTRAL:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NEUTRAL:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static fromNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 99
    new-instance v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    const-string v1, "NEUTRAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    .line 109
    new-instance v1, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    const-string v3, "MIXED_NEUTRAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    .line 119
    new-instance v3, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    const-string v5, "MALE_TAINTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    const/4 v5, 0x3

    new-array v7, v5, [Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    .line 90
    sput-object v7, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string v4, "neutral"

    .line 126
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string v2, "maleTaints"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string v2, "mixedNeutral"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    sget-object v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    if-eqz v0, :cond_0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown gender style name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;
    .locals 1

    .line 90
    const-class v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;
    .locals 1

    .line 90
    sget-object v0, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    return-object v0
.end method
