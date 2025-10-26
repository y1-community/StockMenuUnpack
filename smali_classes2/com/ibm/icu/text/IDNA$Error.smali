.class public final enum Lcom/ibm/icu/text/IDNA$Error;
.super Ljava/lang/Enum;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/IDNA$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum BIDI:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum CONTEXTJ:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_DIGITS:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_PUNCTUATION:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum DISALLOWED:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum DOMAIN_NAME_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum EMPTY_LABEL:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum HYPHEN_3_4:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum INVALID_ACE_LABEL:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum LABEL_HAS_DOT:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum LEADING_COMBINING_MARK:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum LEADING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum PUNYCODE:Lcom/ibm/icu/text/IDNA$Error;

.field public static final enum TRAILING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 376
    new-instance v0, Lcom/ibm/icu/text/IDNA$Error;

    const-string v1, "EMPTY_LABEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/IDNA$Error;->EMPTY_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    .line 383
    new-instance v1, Lcom/ibm/icu/text/IDNA$Error;

    const-string v3, "LABEL_TOO_LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/IDNA$Error;->LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    .line 390
    new-instance v3, Lcom/ibm/icu/text/IDNA$Error;

    const-string v5, "DOMAIN_NAME_TOO_LONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    .line 395
    new-instance v5, Lcom/ibm/icu/text/IDNA$Error;

    const-string v7, "LEADING_HYPHEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/IDNA$Error;->LEADING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;

    .line 400
    new-instance v7, Lcom/ibm/icu/text/IDNA$Error;

    const-string v9, "TRAILING_HYPHEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/IDNA$Error;->TRAILING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;

    .line 405
    new-instance v9, Lcom/ibm/icu/text/IDNA$Error;

    const-string v11, "HYPHEN_3_4"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/text/IDNA$Error;->HYPHEN_3_4:Lcom/ibm/icu/text/IDNA$Error;

    .line 410
    new-instance v11, Lcom/ibm/icu/text/IDNA$Error;

    const-string v13, "LEADING_COMBINING_MARK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Lcom/ibm/icu/text/IDNA$Error;

    .line 415
    new-instance v13, Lcom/ibm/icu/text/IDNA$Error;

    const-string v15, "DISALLOWED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/text/IDNA$Error;->DISALLOWED:Lcom/ibm/icu/text/IDNA$Error;

    .line 421
    new-instance v15, Lcom/ibm/icu/text/IDNA$Error;

    const-string v14, "PUNYCODE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/text/IDNA$Error;->PUNYCODE:Lcom/ibm/icu/text/IDNA$Error;

    .line 427
    new-instance v14, Lcom/ibm/icu/text/IDNA$Error;

    const-string v12, "LABEL_HAS_DOT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/text/IDNA$Error;->LABEL_HAS_DOT:Lcom/ibm/icu/text/IDNA$Error;

    .line 436
    new-instance v12, Lcom/ibm/icu/text/IDNA$Error;

    const-string v10, "INVALID_ACE_LABEL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    .line 441
    new-instance v10, Lcom/ibm/icu/text/IDNA$Error;

    const-string v8, "BIDI"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/text/IDNA$Error;->BIDI:Lcom/ibm/icu/text/IDNA$Error;

    .line 446
    new-instance v8, Lcom/ibm/icu/text/IDNA$Error;

    const-string v6, "CONTEXTJ"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTJ:Lcom/ibm/icu/text/IDNA$Error;

    .line 453
    new-instance v6, Lcom/ibm/icu/text/IDNA$Error;

    const-string v4, "CONTEXTO_PUNCTUATION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Lcom/ibm/icu/text/IDNA$Error;

    .line 459
    new-instance v4, Lcom/ibm/icu/text/IDNA$Error;

    const-string v2, "CONTEXTO_DIGITS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/ibm/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Lcom/ibm/icu/text/IDNA$Error;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/ibm/icu/text/IDNA$Error;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 371
    sput-object v2, Lcom/ibm/icu/text/IDNA$Error;->$VALUES:[Lcom/ibm/icu/text/IDNA$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/IDNA$Error;
    .locals 1

    .line 371
    const-class v0, Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/IDNA$Error;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/IDNA$Error;
    .locals 1

    .line 371
    sget-object v0, Lcom/ibm/icu/text/IDNA$Error;->$VALUES:[Lcom/ibm/icu/text/IDNA$Error;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/IDNA$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/IDNA$Error;

    return-object v0
.end method
