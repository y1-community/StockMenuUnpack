.class public Lcom/ibm/icu/number/CompactNotation;
.super Lcom/ibm/icu/number/Notation;
.source "CompactNotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/number/CompactNotation$CompactHandler;
    }
.end annotation


# instance fields
.field final compactCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/ibm/icu/number/Notation;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/ibm/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/ibm/icu/number/CompactNotation;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/ibm/icu/number/Notation;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/ibm/icu/number/CompactNotation;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 59
    iput-object p1, p0, Lcom/ibm/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    return-void
.end method

.method public static forCustomData(Ljava/util/Map;)Lcom/ibm/icu/number/CompactNotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ibm/icu/number/CompactNotation;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Lcom/ibm/icu/number/CompactNotation;

    invoke-direct {v0, p0}, Lcom/ibm/icu/number/CompactNotation;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method withLocaleData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/impl/number/CompactData$CompactType;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MutablePatternModifier;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MicroPropsGenerator;
    .locals 11

    .line 71
    new-instance v10, Lcom/ibm/icu/number/CompactNotation$CompactHandler;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/ibm/icu/number/CompactNotation$CompactHandler;-><init>(Lcom/ibm/icu/number/CompactNotation;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/impl/number/CompactData$CompactType;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MutablePatternModifier;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;Lcom/ibm/icu/number/CompactNotation$1;)V

    return-object v10
.end method
