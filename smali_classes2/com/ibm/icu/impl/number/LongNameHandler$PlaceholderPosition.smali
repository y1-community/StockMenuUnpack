.class final enum Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;
.super Ljava/lang/Enum;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlaceholderPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum BEGINNING:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum END:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum MIDDLE:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum NONE:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 70
    new-instance v0, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->NONE:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    new-instance v1, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v3, "BEGINNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->BEGINNING:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    new-instance v3, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v5, "MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->MIDDLE:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    new-instance v5, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v7, "END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->END:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->$VALUES:[Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;
    .locals 1

    .line 70
    const-class v0, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;
    .locals 1

    .line 70
    sget-object v0, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->$VALUES:[Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    return-object v0
.end method
