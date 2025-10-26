.class public final enum Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum LAST:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum LAST_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum NEXT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum NEXT_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum THIS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 276
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v1, "LAST_2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    .line 282
    new-instance v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v3, "LAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    .line 288
    new-instance v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v5, "THIS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    .line 294
    new-instance v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v7, "NEXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    .line 300
    new-instance v7, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v9, "NEXT_2"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    .line 306
    new-instance v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v11, "PLAIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 271
    sput-object v11, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    .line 271
    const-class v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    .line 271
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0
.end method
