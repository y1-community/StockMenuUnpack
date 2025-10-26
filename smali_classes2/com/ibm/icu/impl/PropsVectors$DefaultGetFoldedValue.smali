.class Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldedValue;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/PropsVectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGetFoldedValue"
.end annotation


# instance fields
.field private builder:Lcom/ibm/icu/impl/IntTrieBuilder;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/IntTrieBuilder;)V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Lcom/ibm/icu/impl/IntTrieBuilder;

    return-void
.end method


# virtual methods
.method public getFoldedValue(II)I
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Lcom/ibm/icu/impl/IntTrieBuilder;

    iget v0, v0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    add-int/lit16 v1, p1, 0x400

    :goto_0
    const/4 v2, 0x0

    if-ge p1, v1, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [Z

    .line 545
    iget-object v4, p0, Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Lcom/ibm/icu/impl/IntTrieBuilder;

    invoke-virtual {v4, p1, v3}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I[Z)I

    move-result v4

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_0

    add-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    if-eq v4, v0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
