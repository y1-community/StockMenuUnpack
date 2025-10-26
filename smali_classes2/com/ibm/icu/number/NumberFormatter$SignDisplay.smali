.class public final enum Lcom/ibm/icu/number/NumberFormatter$SignDisplay;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberFormatter$SignDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ACCOUNTING:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public static final enum NEVER:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 370
    new-instance v0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 379
    new-instance v1, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v3, "ALWAYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 387
    new-instance v3, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v5, "NEVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->NEVER:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 405
    new-instance v5, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v7, "ACCOUNTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 416
    new-instance v7, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v9, "ACCOUNTING_ALWAYS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 425
    new-instance v9, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v11, "EXCEPT_ZERO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 435
    new-instance v11, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v13, "ACCOUNTING_EXCEPT_ZERO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 442
    new-instance v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v15, "NEGATIVE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 449
    new-instance v15, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const-string v14, "ACCOUNTING_NEGATIVE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 359
    sput-object v14, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberFormatter$SignDisplay;
    .locals 1

    .line 359
    const-class v0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberFormatter$SignDisplay;
    .locals 1

    .line 359
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object v0
.end method
