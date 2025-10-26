.class public Lcom/ibm/icu/impl/locale/LocaleValidityChecker;
.super Ljava/lang/Object;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;,
        Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;
    }
.end annotation


# static fields
.field static final REGULAR_ONLY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;"
        }
    .end annotation
.end field

.field static final REORDERING_EXCLUDE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final REORDERING_INCLUDE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static SEPARATOR:Ljava/util/regex/Pattern;

.field private static final VALID_X:Ljava/util/regex/Pattern;


# instance fields
.field private final allowsDeprecated:Z

.field private final datasubtypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "[-_]"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z0-9]{2,8}(-[a-zA-Z0-9]{2,8})*"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->VALID_X:Ljava/util/regex/Pattern;

    .line 291
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "space"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "punct"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "symbol"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "currency"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v6, "digit"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v6, "others"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string v6, "zzzz"

    aput-object v6, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->REORDERING_INCLUDE:Ljava/util/Set;

    .line 292
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zinh"

    aput-object v2, v1, v3

    const-string v2, "zyyy"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->REORDERING_EXCLUDE:Ljava/util/Set;

    .line 293
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->regular:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->REGULAR_ONLY:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    .line 49
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    .line 54
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    return-void
.end method

.method private isScriptReorder(Ljava/lang/String;)Z
    .locals 4

    .line 299
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->REORDERING_INCLUDE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 302
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->REORDERING_EXCLUDE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 305
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->script:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    sget-object v3, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->REGULAR_ONLY:Ljava/util/Set;

    invoke-static {v0, v3, p1}, Lcom/ibm/icu/impl/ValidIdentifiers;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;)Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSubdivision(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Z
    .locals 4

    .line 271
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 274
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 276
    sget-object v1, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->subdivision:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    iget-object v3, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    invoke-static {v1, v3, v0, p2}, Lcom/ibm/icu/impl/ValidIdentifiers;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object p2

    if-nez p2, :cond_2

    return v2

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 281
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 285
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .locals 2

    .line 339
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 352
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->variant:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    if-ne p1, v0, :cond_1

    const-string v0, "posix"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ValidIdentifiers;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;)Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private isValidLocale(Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .locals 2

    .line 321
    :try_start_0
    new-instance v0, Lcom/ibm/icu/util/ULocale$Builder;

    invoke-direct {v0}, Lcom/ibm/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$Builder;->build()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValid(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result p1
    :try_end_0
    .catch Lcom/ibm/icu/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 328
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->t:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_1
    move-exception v0

    .line 324
    invoke-virtual {v0}, Lcom/ibm/icu/util/IllformedLocaleException;->getErrorIndex()I

    move-result v0

    .line 325
    sget-object v1, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 326
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->t:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isValidU(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 154
    sget-object v5, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->t:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    if-ne v1, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 158
    :goto_0
    sget-object v7, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v8, :cond_1a

    aget-object v6, v7, v11

    .line 159
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v15, 0x2

    if-ne v9, v15, :cond_6

    if-eqz v5, :cond_1

    const/4 v9, 0x1

    .line 160
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x39

    if-gt v15, v9, :cond_6

    :cond_1
    if-eqz v5, :cond_3

    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValidLocale(Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    return v5

    :cond_2
    const/4 v5, 0x0

    .line 169
    :cond_3
    invoke-static {v6}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    .line 171
    invoke-virtual {v2, v1, v6}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 173
    :cond_4
    iget-boolean v6, v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    if-nez v6, :cond_5

    invoke-static {v9}, Lcom/ibm/icu/impl/locale/KeyTypeData;->isDeprecated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 174
    invoke-virtual {v2, v1, v9}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 176
    :cond_5
    invoke-static {v9}, Lcom/ibm/icu/impl/locale/KeyTypeData;->getValueType(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v13

    .line 177
    invoke-static {v9}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    move-result-object v14

    move-object/from16 v16, v3

    move-object/from16 v18, v7

    move-object v10, v9

    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    const/16 v9, 0x2d

    if-eqz v5, :cond_9

    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eqz v15, :cond_7

    .line 181
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :cond_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v3

    move-object/from16 v18, v7

    :cond_8
    :goto_2
    move-object/from16 v3, p1

    goto/16 :goto_6

    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 186
    sget-object v15, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$com$ibm$icu$impl$locale$KeyTypeData$ValueType:[I

    invoke-virtual {v13}, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->ordinal()I

    move-result v17

    aget v15, v15, v17

    const-string v9, "-"

    move-object/from16 v18, v7

    const/4 v7, 0x1

    if-eq v15, v7, :cond_d

    const/4 v7, 0x2

    if-eq v15, v7, :cond_b

    const/4 v7, 0x3

    if-eq v15, v7, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x1

    if-ne v12, v7, :cond_e

    .line 203
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_3

    :cond_b
    const/4 v7, 0x1

    if-ne v12, v7, :cond_c

    const/4 v15, 0x0

    .line 194
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 195
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    const/16 v15, 0x2d

    .line 197
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_d
    if-le v12, v7, :cond_e

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 209
    :cond_e
    :goto_3
    sget-object v7, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$com$ibm$icu$impl$locale$LocaleValidityChecker$SpecialCase:[I

    invoke-virtual {v14}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->ordinal()I

    move-result v15

    aget v7, v7, v15

    const/4 v15, 0x1

    if-eq v7, v15, :cond_18

    const/4 v15, 0x2

    if-eq v7, v15, :cond_17

    const-string v15, "zzzz"

    move-object/from16 v16, v3

    const/4 v3, 0x3

    if-eq v7, v3, :cond_14

    const/4 v3, 0x4

    if-eq v7, v3, :cond_13

    const/4 v3, 0x5

    if-eq v7, v3, :cond_10

    .line 246
    new-instance v3, Lcom/ibm/icu/util/Output;

    invoke-direct {v3}, Lcom/ibm/icu/util/Output;-><init>()V

    .line 247
    new-instance v7, Lcom/ibm/icu/util/Output;

    invoke-direct {v7}, Lcom/ibm/icu/util/Output;-><init>()V

    .line 248
    invoke-static {v10, v6, v3, v7}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 252
    :cond_f
    iget-boolean v3, v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    if-nez v3, :cond_8

    invoke-static {v10, v6}, Lcom/ibm/icu/impl/locale/KeyTypeData;->isDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 233
    :cond_10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x6

    if-lt v3, v7, :cond_12

    invoke-virtual {v6, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_4

    .line 236
    :cond_11
    sget-object v3, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->region:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x4

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6, v2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v3

    if-nez v3, :cond_8

    return v9

    .line 234
    :cond_12
    :goto_4
    invoke-virtual {v2, v1, v6}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_13
    move-object/from16 v3, p1

    .line 228
    invoke-direct {v0, v3, v6}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isSubdivision(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_14
    move-object/from16 v3, p1

    .line 222
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "others"

    goto :goto_5

    :cond_15
    move-object v7, v6

    :goto_5
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 223
    invoke-direct {v0, v6}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isScriptReorder(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 224
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_17
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    const/16 v7, 0x10

    .line 214
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    const v15, 0x10ffff

    if-le v7, v15, :cond_19

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 218
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_18
    move-object/from16 v16, v3

    goto/16 :goto_2

    :cond_19
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    move-object/from16 v7, v18

    goto/16 :goto_1

    :cond_1a
    if-eqz v5, :cond_1b

    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValidLocale(Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    return v1

    :cond_1b
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getDatasubtypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public isValid(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p2, v1, v1}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v6

    .line 84
    sget-object v7, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->language:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v7, v2, p2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_1

    const-string p1, "x"

    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p2, v1, v1}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    return v8

    :cond_0
    return v9

    .line 92
    :cond_1
    sget-object v1, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->script:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v1, v3, p2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v1

    if-nez v1, :cond_2

    return v9

    .line 93
    :cond_2
    sget-object v1, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->region:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v1, v4, p2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v1

    if-nez v1, :cond_3

    return v9

    .line 94
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 95
    sget-object v1, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 96
    sget-object v5, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->variant:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v5, v4, p2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v4

    if-nez v4, :cond_4

    return v9

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_5
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 101
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    move-result-object v3

    .line 102
    sget-object v4, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$com$ibm$icu$impl$ValidIdentifiers$Datatype:[I

    invoke-virtual {v3}, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v8, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    goto :goto_1

    .line 107
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/ibm/icu/util/ULocale;->getExtension(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker;->isValidU(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_6

    return v9

    :cond_8
    return v8

    .line 113
    :catch_0
    sget-object p1, Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;->illegal:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    return v8
.end method
