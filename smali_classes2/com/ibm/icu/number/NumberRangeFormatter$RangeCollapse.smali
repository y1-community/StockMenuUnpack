.class public final enum Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;
.super Ljava/lang/Enum;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeCollapse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum ALL:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum AUTO:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum NONE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum UNIT:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 52
    new-instance v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->AUTO:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 60
    new-instance v1, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->NONE:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 69
    new-instance v3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v5, "UNIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->UNIT:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 78
    new-instance v5, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v7, "ALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->ALL:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 42
    sput-object v7, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->$VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;
    .locals 1

    .line 42
    const-class v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;
    .locals 1

    .line 42
    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->$VALUES:[Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    return-object v0
.end method
