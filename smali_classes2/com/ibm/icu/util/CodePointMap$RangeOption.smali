.class public final enum Lcom/ibm/icu/util/CodePointMap$RangeOption;
.super Ljava/lang/Enum;
.source "CodePointMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/CodePointMap$RangeOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/CodePointMap$RangeOption;

.field public static final enum FIXED_ALL_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

.field public static final enum FIXED_LEAD_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

.field public static final enum NORMAL:Lcom/ibm/icu/util/CodePointMap$RangeOption;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/CodePointMap$RangeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/CodePointMap$RangeOption;->NORMAL:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    .line 49
    new-instance v1, Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const-string v3, "FIXED_LEAD_SURROGATES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/CodePointMap$RangeOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    .line 66
    new-instance v3, Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const-string v5, "FIXED_ALL_SURROGATES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/CodePointMap$RangeOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/CodePointMap$RangeOption;->FIXED_ALL_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/util/CodePointMap$RangeOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 25
    sput-object v5, Lcom/ibm/icu/util/CodePointMap$RangeOption;->$VALUES:[Lcom/ibm/icu/util/CodePointMap$RangeOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/CodePointMap$RangeOption;
    .locals 1

    .line 25
    const-class v0, Lcom/ibm/icu/util/CodePointMap$RangeOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/CodePointMap$RangeOption;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/CodePointMap$RangeOption;
    .locals 1

    .line 25
    sget-object v0, Lcom/ibm/icu/util/CodePointMap$RangeOption;->$VALUES:[Lcom/ibm/icu/util/CodePointMap$RangeOption;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/CodePointMap$RangeOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/CodePointMap$RangeOption;

    return-object v0
.end method
