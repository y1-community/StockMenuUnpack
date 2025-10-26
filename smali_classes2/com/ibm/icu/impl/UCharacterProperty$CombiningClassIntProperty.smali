.class Lcom/ibm/icu/impl/UCharacterProperty$CombiningClassIntProperty;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombiningClassIntProperty"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$CombiningClassIntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    .line 626
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    const/16 p1, 0xff

    return p1
.end method
