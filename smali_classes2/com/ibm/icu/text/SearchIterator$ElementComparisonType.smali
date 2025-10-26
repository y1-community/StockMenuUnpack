.class public final enum Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;
.super Ljava/lang/Enum;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SearchIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum ANY_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum PATTERN_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 745
    new-instance v0, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    const-string v1, "STANDARD_ELEMENT_COMPARISON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    .line 760
    new-instance v1, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    const-string v3, "PATTERN_BASE_WEIGHT_IS_WILDCARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->PATTERN_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    .line 776
    new-instance v3, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    const-string v5, "ANY_BASE_WEIGHT_IS_WILDCARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 739
    sput-object v5, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 739
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    .line 739
    const-class v0, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    .line 739
    sget-object v0, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method
