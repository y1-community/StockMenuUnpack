.class final enum Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;
.super Ljava/lang/Enum;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_IMPLICIT:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_PRIMARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_REGULAR:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_SECONDARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TERTIARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TRAILING:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_VARIABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_IMPLICIT:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_PRIMARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_REGULAR:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_SECONDARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TERTIARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TRAILING:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_VARIABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 32
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_TERTIARY_IGNORABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 33
    new-instance v1, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v3, "LAST_TERTIARY_IGNORABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 34
    new-instance v3, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v5, "FIRST_SECONDARY_IGNORABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 35
    new-instance v5, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v7, "LAST_SECONDARY_IGNORABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 36
    new-instance v7, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v9, "FIRST_PRIMARY_IGNORABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 37
    new-instance v9, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v11, "LAST_PRIMARY_IGNORABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 38
    new-instance v11, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v13, "FIRST_VARIABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 39
    new-instance v13, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v15, "LAST_VARIABLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 40
    new-instance v15, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v14, "FIRST_REGULAR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 41
    new-instance v14, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v12, "LAST_REGULAR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 42
    new-instance v12, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v10, "FIRST_IMPLICIT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 43
    new-instance v10, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v8, "LAST_IMPLICIT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 44
    new-instance v8, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v6, "FIRST_TRAILING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    .line 45
    new-instance v6, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const-string v4, "LAST_TRAILING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

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

    .line 31
    sput-object v4, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;
    .locals 1

    .line 31
    const-class v0, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;
    .locals 1

    .line 31
    sget-object v0, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    return-object v0
.end method
