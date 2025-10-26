.class final enum Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;
.super Ljava/lang/Enum;
.source "FCDIterCollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum IN_NORM_ITER_AT_LIMIT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum IN_NORM_ITER_AT_START:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_CHECK_BWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 416
    new-instance v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v1, "ITER_CHECK_FWD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    .line 422
    new-instance v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v3, "ITER_CHECK_BWD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    .line 427
    new-instance v3, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v5, "ITER_IN_FCD_SEGMENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    .line 433
    new-instance v5, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v7, "IN_NORM_ITER_AT_LIMIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    .line 439
    new-instance v7, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v9, "IN_NORM_ITER_AT_START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 410
    sput-object v9, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;
    .locals 1

    .line 410
    const-class v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;
    .locals 1

    .line 410
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    return-object v0
.end method
