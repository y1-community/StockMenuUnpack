.class final enum Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$5;
.super Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/BidiTransform$1;)V

    return-void
.end method


# virtual methods
.method doTransform(Lcom/ibm/icu/text/BidiTransform;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 440
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/text/BidiTransform;->access$400(Lcom/ibm/icu/text/BidiTransform;II)V

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 441
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/text/BidiTransform;->access$500(Lcom/ibm/icu/text/BidiTransform;BI)V

    .line 442
    invoke-static {p1}, Lcom/ibm/icu/text/BidiTransform;->access$600(Lcom/ibm/icu/text/BidiTransform;)V

    return-void
.end method

.method matches(BLcom/ibm/icu/text/BidiTransform$Order;BLcom/ibm/icu/text/BidiTransform$Order;)Z
    .locals 0

    .line 435
    invoke-static {p1}, Lcom/ibm/icu/text/BidiTransform;->access$100(B)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/ibm/icu/text/BidiTransform;->access$300(Lcom/ibm/icu/text/BidiTransform$Order;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    invoke-static {p3}, Lcom/ibm/icu/text/BidiTransform;->access$700(B)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p4}, Lcom/ibm/icu/text/BidiTransform;->access$200(Lcom/ibm/icu/text/BidiTransform$Order;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
