.class Lcom/ibm/icu/impl/UCharacterProperty$13;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
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

    .line 542
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$13;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1

    const v0, 0x1f1e6

    if-gt v0, p1, :cond_0

    const v0, 0x1f1ff

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
