.class Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiDiIntProperty"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;)V
    .locals 1

    .line 615
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v0, 0x5

    .line 616
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1

    .line 620
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->getMaxValue(I)I

    move-result p1

    return p1
.end method
