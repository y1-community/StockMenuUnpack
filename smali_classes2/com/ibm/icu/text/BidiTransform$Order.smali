.class public final enum Lcom/ibm/icu/text/BidiTransform$Order;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/BidiTransform$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/BidiTransform$Order;

.field public static final enum LOGICAL:Lcom/ibm/icu/text/BidiTransform$Order;

.field public static final enum VISUAL:Lcom/ibm/icu/text/BidiTransform$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/ibm/icu/text/BidiTransform$Order;

    const-string v1, "LOGICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/BidiTransform$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/BidiTransform$Order;->LOGICAL:Lcom/ibm/icu/text/BidiTransform$Order;

    .line 68
    new-instance v1, Lcom/ibm/icu/text/BidiTransform$Order;

    const-string v3, "VISUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/BidiTransform$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/BidiTransform$Order;->VISUAL:Lcom/ibm/icu/text/BidiTransform$Order;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/text/BidiTransform$Order;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 56
    sput-object v3, Lcom/ibm/icu/text/BidiTransform$Order;->$VALUES:[Lcom/ibm/icu/text/BidiTransform$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/BidiTransform$Order;
    .locals 1

    .line 56
    const-class v0, Lcom/ibm/icu/text/BidiTransform$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/BidiTransform$Order;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/BidiTransform$Order;
    .locals 1

    .line 56
    sget-object v0, Lcom/ibm/icu/text/BidiTransform$Order;->$VALUES:[Lcom/ibm/icu/text/BidiTransform$Order;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/BidiTransform$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/BidiTransform$Order;

    return-object v0
.end method
