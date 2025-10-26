.class Lcom/ibm/icu/impl/UCharacterProperty$20;
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

    .line 701
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$20;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1

    .line 708
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$20;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result p1

    const v0, 0xf000ff

    and-int/2addr p1, v0

    .line 709
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->mergeScriptCodeOrIndex(I)I

    move-result p1

    return p1
.end method

.method getValue(I)I
    .locals 0

    .line 704
    invoke-static {p1}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result p1

    return p1
.end method
