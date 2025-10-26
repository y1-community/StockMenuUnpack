.class public final enum Lcom/ibm/icu/text/MessagePattern$Part$Type;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePattern$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/MessagePattern$Part$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_TYPE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 639
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v1, "MSG_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 648
    new-instance v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v3, "MSG_LIMIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 656
    new-instance v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v5, "SKIP_SYNTAX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 663
    new-instance v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v7, "INSERT_CHAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 671
    new-instance v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v9, "REPLACE_NUMBER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 682
    new-instance v9, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v11, "ARG_START"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 689
    new-instance v11, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v13, "ARG_LIMIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 694
    new-instance v13, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v15, "ARG_NUMBER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 700
    new-instance v15, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v14, "ARG_NAME"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 706
    new-instance v14, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v12, "ARG_TYPE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 712
    new-instance v12, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v10, "ARG_STYLE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 718
    new-instance v10, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v8, "ARG_SELECTOR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 725
    new-instance v8, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v6, "ARG_INT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 733
    new-instance v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const-string v4, "ARG_DOUBLE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 629
    sput-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->$VALUES:[Lcom/ibm/icu/text/MessagePattern$Part$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern$Part$Type;
    .locals 1

    .line 629
    const-class v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/MessagePattern$Part$Type;
    .locals 1

    .line 629
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->$VALUES:[Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/MessagePattern$Part$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method


# virtual methods
.method public hasNumericValue()Z
    .locals 1

    .line 742
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
