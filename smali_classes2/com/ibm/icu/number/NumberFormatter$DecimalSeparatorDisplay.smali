.class public final enum Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecimalSeparatorDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field public static final enum ALWAYS:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field public static final enum AUTO:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 472
    new-instance v0, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 480
    new-instance v1, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const-string v3, "ALWAYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 464
    sput-object v3, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 464
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .locals 1

    .line 464
    const-class v0, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .locals 1

    .line 464
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object v0
.end method
