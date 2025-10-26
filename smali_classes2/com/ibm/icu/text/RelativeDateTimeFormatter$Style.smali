.class public final enum Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

.field private static final INDEX_COUNT:I = 0x3

.field public static final enum LONG:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum NARROW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum SHORT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 94
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    const-string v1, "LONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->LONG:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 100
    new-instance v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    const-string v3, "SHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 106
    new-instance v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    const-string v5, "NARROW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 88
    sput-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 88
    const-class v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 88
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method
