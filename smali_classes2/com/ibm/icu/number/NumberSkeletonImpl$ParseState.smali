.class final enum Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;
.super Ljava/lang/Enum;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_CURRENCY_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_FRACTION_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_IDENTIFIER_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_INCREMENT_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_INTEGER_WIDTH:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_NUMBERING_SYSTEM:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_PER_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_SCALE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum STATE_UNIT_USAGE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 50
    new-instance v0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 53
    new-instance v1, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v3, "STATE_SCIENTIFIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 54
    new-instance v3, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v5, "STATE_FRACTION_PRECISION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 55
    new-instance v5, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v7, "STATE_PRECISION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 58
    new-instance v7, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v9, "STATE_INCREMENT_PRECISION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_INCREMENT_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 59
    new-instance v9, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v11, "STATE_MEASURE_UNIT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 60
    new-instance v11, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v13, "STATE_PER_MEASURE_UNIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PER_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 61
    new-instance v13, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v15, "STATE_IDENTIFIER_UNIT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_IDENTIFIER_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 62
    new-instance v15, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v14, "STATE_UNIT_USAGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_UNIT_USAGE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 63
    new-instance v14, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v12, "STATE_CURRENCY_UNIT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_CURRENCY_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 64
    new-instance v12, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v10, "STATE_INTEGER_WIDTH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_INTEGER_WIDTH:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 65
    new-instance v10, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v8, "STATE_NUMBERING_SYSTEM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NUMBERING_SYSTEM:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 66
    new-instance v8, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const-string v6, "STATE_SCALE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCALE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 48
    sput-object v6, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->$VALUES:[Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;
    .locals 1

    .line 48
    const-class v0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;
    .locals 1

    .line 48
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->$VALUES:[Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0
.end method
