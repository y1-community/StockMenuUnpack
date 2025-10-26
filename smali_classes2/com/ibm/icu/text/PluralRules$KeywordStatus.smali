.class public final enum Lcom/ibm/icu/text/PluralRules$KeywordStatus;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeywordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/PluralRules$KeywordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/PluralRules$KeywordStatus;

.field public static final enum BOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

.field public static final enum INVALID:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

.field public static final enum SUPPRESSED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

.field public static final enum UNBOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

.field public static final enum UNIQUE:Lcom/ibm/icu/text/PluralRules$KeywordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 2489
    new-instance v0, Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->INVALID:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    .line 2495
    new-instance v1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    const-string v3, "SUPPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    .line 2501
    new-instance v3, Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    const-string v5, "UNIQUE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNIQUE:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    .line 2507
    new-instance v5, Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    const-string v7, "BOUNDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->BOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    .line 2513
    new-instance v7, Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    const-string v9, "UNBOUNDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2483
    sput-object v9, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->$VALUES:[Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2483
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$KeywordStatus;
    .locals 1

    .line 2483
    const-class v0, Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/PluralRules$KeywordStatus;
    .locals 1

    .line 2483
    sget-object v0, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->$VALUES:[Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/PluralRules$KeywordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object v0
.end method
