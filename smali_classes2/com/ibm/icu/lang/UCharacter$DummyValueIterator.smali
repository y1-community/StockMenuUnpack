.class final Lcom/ibm/icu/lang/UCharacter$DummyValueIterator;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Lcom/ibm/icu/util/ValueIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyValueIterator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/lang/UCharacter$1;)V
    .locals 0

    .line 5744
    invoke-direct {p0}, Lcom/ibm/icu/lang/UCharacter$DummyValueIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public next(Lcom/ibm/icu/util/ValueIterator$Element;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setRange(II)V
    .locals 0

    return-void
.end method
