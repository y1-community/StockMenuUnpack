.class public final Lcom/ibm/icu/util/CodePointMap$Range;
.super Ljava/lang/Object;
.source "CodePointMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation


# instance fields
.field private end:I

.field private start:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->end:I

    iput v0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->start:I

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/CodePointMap$Range;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->end:I

    return p0
.end method

.method static synthetic access$002(Lcom/ibm/icu/util/CodePointMap$Range;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$Range;->end:I

    return p1
.end method

.method static synthetic access$100(Lcom/ibm/icu/util/CodePointMap$Range;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->value:I

    return p0
.end method

.method static synthetic access$102(Lcom/ibm/icu/util/CodePointMap$Range;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$Range;->value:I

    return p1
.end method

.method static synthetic access$202(Lcom/ibm/icu/util/CodePointMap$Range;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$Range;->start:I

    return p1
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->start:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$Range;->value:I

    return v0
.end method

.method public set(III)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$Range;->start:I

    .line 144
    iput p2, p0, Lcom/ibm/icu/util/CodePointMap$Range;->end:I

    .line 145
    iput p3, p0, Lcom/ibm/icu/util/CodePointMap$Range;->value:I

    return-void
.end method
