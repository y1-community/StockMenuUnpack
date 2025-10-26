.class Lcom/ibm/icu/impl/UCharacterProperty$16;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$16;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    const/16 p1, 0x1d

    return p1
.end method

.method getValue(I)I
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$16;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getType(I)I

    move-result p1

    return p1
.end method
