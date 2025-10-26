.class public final enum Lcom/ibm/icu/util/ULocale$Category;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/ULocale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/ULocale$Category;

.field public static final enum DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

.field public static final enum FORMAT:Lcom/ibm/icu/util/ULocale$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 353
    new-instance v0, Lcom/ibm/icu/util/ULocale$Category;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    .line 358
    new-instance v1, Lcom/ibm/icu/util/ULocale$Category;

    const-string v3, "FORMAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/util/ULocale$Category;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 348
    sput-object v3, Lcom/ibm/icu/util/ULocale$Category;->$VALUES:[Lcom/ibm/icu/util/ULocale$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Category;
    .locals 1

    .line 348
    const-class v0, Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/ULocale$Category;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/ULocale$Category;
    .locals 1

    .line 348
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->$VALUES:[Lcom/ibm/icu/util/ULocale$Category;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/ULocale$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/ULocale$Category;

    return-object v0
.end method
