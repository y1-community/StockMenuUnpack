.class Lcom/ibm/icu/impl/UCharacterProperty$27;
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

    .line 777
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$27;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    .line 785
    sget-object p1, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;

    iget p1, p1, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->maxVoValue:I

    return p1
.end method

.method getValue(I)I
    .locals 1

    .line 780
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;

    iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->voTrie:Lcom/ibm/icu/util/CodePointTrie;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
