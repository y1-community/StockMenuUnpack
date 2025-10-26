.class public final enum Lcom/ibm/icu/text/UnicodeSet$SpanCondition;
.super Ljava/lang/Enum;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpanCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/UnicodeSet$SpanCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONDITION_COUNT:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4856
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string v1, "NOT_CONTAINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 4872
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string v3, "CONTAINED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 4892
    new-instance v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string v5, "SIMPLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 4899
    new-instance v5, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string v7, "CONDITION_COUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 4844
    sput-object v7, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4844
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet$SpanCondition;
    .locals 1

    .line 4844
    const-class v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;
    .locals 1

    .line 4844
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    return-object v0
.end method
