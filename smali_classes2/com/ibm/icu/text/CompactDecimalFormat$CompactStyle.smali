.class public final enum Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;
.super Ljava/lang/Enum;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompactStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum LONG:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    const-string v1, "SHORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 78
    new-instance v1, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 66
    sput-object v3, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1

    .line 66
    const-class v0, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1

    .line 66
    sget-object v0, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-object v0
.end method
