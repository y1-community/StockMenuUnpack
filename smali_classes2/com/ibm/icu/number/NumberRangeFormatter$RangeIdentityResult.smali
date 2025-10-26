.class public final enum Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;
.super Ljava/lang/Enum;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeIdentityResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field public static final enum EQUAL_AFTER_ROUNDING:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field public static final enum EQUAL_BEFORE_ROUNDING:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field public static final enum NOT_EQUAL:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 139
    new-instance v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    const-string v1, "EQUAL_BEFORE_ROUNDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_BEFORE_ROUNDING:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 147
    new-instance v1, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    const-string v3, "EQUAL_AFTER_ROUNDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_AFTER_ROUNDING:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 155
    new-instance v3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    const-string v5, "NOT_EQUAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->NOT_EQUAL:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 132
    sput-object v5, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->$VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;
    .locals 1

    .line 132
    const-class v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;
    .locals 1

    .line 132
    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->$VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-object v0
.end method
