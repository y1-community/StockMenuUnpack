.class public final enum Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrailingZeroDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

.field public static final enum AUTO:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

.field public static final enum HIDE_IF_WHOLE:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 500
    new-instance v0, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    .line 507
    new-instance v1, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    const-string v3, "HIDE_IF_WHOLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->HIDE_IF_WHOLE:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 494
    sput-object v3, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 494
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;
    .locals 1

    .line 494
    const-class v0, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;
    .locals 1

    .line 494
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    return-object v0
.end method
