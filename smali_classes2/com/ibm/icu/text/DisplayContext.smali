.class public final enum Lcom/ibm/icu/text/DisplayContext;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DisplayContext$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DisplayContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum NO_SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;


# instance fields
.field private final type:Lcom/ibm/icu/text/DisplayContext$Type;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v2, "STANDARD_NAMES"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    .line 34
    new-instance v1, Lcom/ibm/icu/text/DisplayContext;

    sget-object v2, Lcom/ibm/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v4, "DIALECT_NAMES"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v5}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v1, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    .line 44
    new-instance v2, Lcom/ibm/icu/text/DisplayContext;

    sget-object v4, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v6, "CAPITALIZATION_NONE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    .line 51
    new-instance v4, Lcom/ibm/icu/text/DisplayContext;

    sget-object v6, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v8, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v5}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v4, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    .line 58
    new-instance v6, Lcom/ibm/icu/text/DisplayContext;

    sget-object v8, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v10, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8, v7}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v6, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    .line 65
    new-instance v8, Lcom/ibm/icu/text/DisplayContext;

    sget-object v10, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v12, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10, v9}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v8, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    .line 73
    new-instance v10, Lcom/ibm/icu/text/DisplayContext;

    sget-object v12, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v14, "CAPITALIZATION_FOR_STANDALONE"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12, v11}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v10, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    .line 84
    new-instance v12, Lcom/ibm/icu/text/DisplayContext;

    sget-object v14, Lcom/ibm/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v15, "LENGTH_FULL"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v12, Lcom/ibm/icu/text/DisplayContext;->LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

    .line 91
    new-instance v14, Lcom/ibm/icu/text/DisplayContext;

    sget-object v15, Lcom/ibm/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v13, "LENGTH_SHORT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15, v5}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v14, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    .line 102
    new-instance v13, Lcom/ibm/icu/text/DisplayContext;

    sget-object v15, Lcom/ibm/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v11, "SUBSTITUTE"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v13, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    .line 108
    new-instance v11, Lcom/ibm/icu/text/DisplayContext;

    sget-object v15, Lcom/ibm/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const-string v9, "NO_SUBSTITUTE"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15, v5}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v11, Lcom/ibm/icu/text/DisplayContext;->NO_SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    const/16 v9, 0xb

    new-array v9, v9, [Lcom/ibm/icu/text/DisplayContext;

    aput-object v0, v9, v3

    aput-object v1, v9, v5

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v13, v9, v0

    aput-object v11, v9, v7

    .line 16
    sput-object v9, Lcom/ibm/icu/text/DisplayContext;->$VALUES:[Lcom/ibm/icu/text/DisplayContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/DisplayContext$Type;",
            "I)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput-object p3, p0, Lcom/ibm/icu/text/DisplayContext;->type:Lcom/ibm/icu/text/DisplayContext$Type;

    .line 142
    iput p4, p0, Lcom/ibm/icu/text/DisplayContext;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 16
    const-class v0, Lcom/ibm/icu/text/DisplayContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DisplayContext;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 16
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->$VALUES:[Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DisplayContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DisplayContext;

    return-object v0
.end method


# virtual methods
.method public type()Lcom/ibm/icu/text/DisplayContext$Type;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ibm/icu/text/DisplayContext;->type:Lcom/ibm/icu/text/DisplayContext$Type;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/ibm/icu/text/DisplayContext;->value:I

    return v0
.end method
