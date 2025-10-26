.class public final enum Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;
.super Ljava/lang/Enum;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeIdentityFallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum APPROXIMATELY:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum APPROXIMATELY_OR_SINGLE_VALUE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum RANGE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum SINGLE_VALUE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 95
    new-instance v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v1, "SINGLE_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->SINGLE_VALUE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 104
    new-instance v1, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v3, "APPROXIMATELY_OR_SINGLE_VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY_OR_SINGLE_VALUE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 113
    new-instance v3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v5, "APPROXIMATELY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 122
    new-instance v5, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v7, "RANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->RANGE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 88
    sput-object v7, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->$VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;
    .locals 1

    .line 88
    const-class v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;
    .locals 1

    .line 88
    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->$VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    return-object v0
.end method
