.class public final Lcom/ibm/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/ListFormatter$Cache;,
        Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;,
        Lcom/ibm/icu/text/ListFormatter$ContextualHandler;,
        Lcom/ibm/icu/text/ListFormatter$StaticHandler;,
        Lcom/ibm/icu/text/ListFormatter$FormattedList;,
        Lcom/ibm/icu/text/ListFormatter$Field;,
        Lcom/ibm/icu/text/ListFormatter$SpanField;,
        Lcom/ibm/icu/text/ListFormatter$Width;,
        Lcom/ibm/icu/text/ListFormatter$Type;,
        Lcom/ibm/icu/text/ListFormatter$PatternHandler;
    }
.end annotation


# static fields
.field static cache:Lcom/ibm/icu/text/ListFormatter$Cache;

.field private static final changeToE:Ljava/util/regex/Pattern;

.field private static final changeToU:Ljava/util/regex/Pattern;

.field private static final changeToVavDash:Ljava/util/regex/Pattern;

.field private static final compiledE:Ljava/lang/String;

.field private static final compiledO:Ljava/lang/String;

.field private static final compiledU:Ljava/lang/String;

.field private static final compiledVav:Ljava/lang/String;

.field private static final compiledVavDash:Ljava/lang/String;

.field private static final compiledY:Ljava/lang/String;


# instance fields
.field private final locale:Lcom/ibm/icu/util/ULocale;

.field private final middle:Ljava/lang/String;

.field private final patternHandler:Lcom/ibm/icu/text/ListFormatter$PatternHandler;

.field private final start:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} y {1}"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledY:Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} e {1}"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledE:Ljava/lang/String;

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} o {1}"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledO:Ljava/lang/String;

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} u {1}"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledU:Ljava/lang/String;

    const-string v0, "(i.*|hi|hi[^ae].*)"

    const/4 v1, 0x2

    .line 516
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->changeToE:Ljava/util/regex/Pattern;

    const-string v0, "((o|ho|8).*|11)"

    .line 520
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->changeToU:Ljava/util/regex/Pattern;

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} \u05d5{1}"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledVav:Ljava/lang/String;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} \u05d5-{1}"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledVavDash:Ljava/lang/String;

    const-string v0, "^[\\P{InHebrew}].*$"

    .line 530
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->changeToVavDash:Ljava/util/regex/Pattern;

    .line 688
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ListFormatter$Cache;-><init>(Lcom/ibm/icu/text/ListFormatter$1;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->cache:Lcom/ibm/icu/text/ListFormatter$Cache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-static {p1, v0}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    invoke-static {p2, p1}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-static {p3, p1}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-static {p4, p1}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 290
    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/ibm/icu/text/ListFormatter;->start:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/ibm/icu/text/ListFormatter;->middle:Ljava/lang/String;

    .line 301
    iput-object p5, p0, Lcom/ibm/icu/text/ListFormatter;->locale:Lcom/ibm/icu/util/ULocale;

    .line 302
    invoke-direct {p0, p1, p4}, Lcom/ibm/icu/text/ListFormatter;->createPatternHandler(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/ListFormatter$PatternHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/ListFormatter;->patternHandler:Lcom/ibm/icu/text/ListFormatter$PatternHandler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$1;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 306
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createPatternHandler(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/ListFormatter$PatternHandler;
    .locals 8

    .line 535
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter;->locale:Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_c

    .line 536
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es"

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 538
    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 539
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_4

    if-eqz v0, :cond_0

    goto :goto_2

    .line 544
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 545
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_c

    .line 547
    :cond_1
    new-instance v6, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;

    sget-object v2, Lcom/ibm/icu/text/ListFormatter;->changeToU:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ibm/icu/text/ListFormatter;->compiledU:Ljava/lang/String;

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, p1

    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledU:Ljava/lang/String;

    move-object v7, v0

    goto :goto_1

    :cond_3
    move-object v7, p2

    :goto_1
    move-object v0, v6

    move-object v1, v2

    move-object v2, v4

    move-object v3, p1

    move-object v4, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 541
    :cond_4
    :goto_2
    new-instance v6, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;

    sget-object v2, Lcom/ibm/icu/text/ListFormatter;->changeToE:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/ibm/icu/text/ListFormatter;->compiledE:Ljava/lang/String;

    move-object v4, v1

    goto :goto_3

    :cond_5
    move-object v4, p1

    :goto_3
    if-eqz v0, :cond_6

    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledE:Ljava/lang/String;

    move-object v7, v0

    goto :goto_4

    :cond_6
    move-object v7, p2

    :goto_4
    move-object v0, v6

    move-object v1, v2

    move-object v2, v4

    move-object v3, p1

    move-object v4, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_7
    const-string v1, "he"

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 551
    :cond_8
    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledVav:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 552
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_9

    if-eqz v0, :cond_c

    .line 554
    :cond_9
    new-instance v6, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;

    sget-object v2, Lcom/ibm/icu/text/ListFormatter;->changeToVavDash:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/ibm/icu/text/ListFormatter;->compiledVavDash:Ljava/lang/String;

    move-object v4, v1

    goto :goto_5

    :cond_a
    move-object v4, p1

    :goto_5
    if-eqz v0, :cond_b

    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->compiledVavDash:Ljava/lang/String;

    move-object v7, v0

    goto :goto_6

    :cond_b
    move-object v7, p2

    :goto_6
    move-object v0, v6

    move-object v1, v2

    move-object v2, v4

    move-object v3, p1

    move-object v4, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 559
    :cond_c
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$StaticHandler;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/ListFormatter$StaticHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/ibm/icu/text/ListFormatter;
    .locals 1

    .line 368
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/ListFormatter;
    .locals 2

    .line 346
    sget-object v0, Lcom/ibm/icu/text/ListFormatter$Type;->AND:Lcom/ibm/icu/text/ListFormatter$Type;

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Width;->WIDE:Lcom/ibm/icu/text/ListFormatter$Width;

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Lcom/ibm/icu/text/ListFormatter;
    .locals 0

    .line 318
    invoke-static {p1, p2}, Lcom/ibm/icu/text/ListFormatter;->typeWidthToStyleString(Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 322
    sget-object p2, Lcom/ibm/icu/text/ListFormatter;->cache:Lcom/ibm/icu/text/ListFormatter$Cache;

    invoke-virtual {p2, p0, p1}, Lcom/ibm/icu/text/ListFormatter$Cache;->get(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object p0

    return-object p0

    .line 320
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid list format type/width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/ListFormatter;
    .locals 2

    .line 358
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    sget-object v0, Lcom/ibm/icu/text/ListFormatter$Type;->AND:Lcom/ibm/icu/text/ListFormatter$Type;

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Width;->WIDE:Lcom/ibm/icu/text/ListFormatter$Width;

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Lcom/ibm/icu/text/ListFormatter;
    .locals 0

    .line 334
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method

.method static typeWidthToStyleString(Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Ljava/lang/String;
    .locals 3

    .line 691
    sget-object v0, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Type:[I

    invoke-virtual {p0}, Lcom/ibm/icu/text/ListFormatter$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    sget-object p0, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Width:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$Width;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "unit-narrow"

    return-object p0

    :cond_2
    const-string p0, "unit-short"

    return-object p0

    :cond_3
    const-string p0, "unit"

    return-object p0

    .line 704
    :cond_4
    sget-object p0, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Width:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$Width;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const-string p0, "or-narrow"

    return-object p0

    :cond_6
    const-string p0, "or-short"

    return-object p0

    :cond_7
    const-string p0, "or"

    return-object p0

    .line 693
    :cond_8
    sget-object p0, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Width:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$Width;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_b

    if-eq p0, v1, :cond_a

    if-eq p0, v0, :cond_9

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_9
    const-string p0, "standard-narrow"

    return-object p0

    :cond_a
    const-string p0, "standard-short"

    return-object p0

    :cond_b
    const-string p0, "standard"

    return-object p0
.end method


# virtual methods
.method public format(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 380
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method formatImpl(Ljava/util/Collection;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)",
            "Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;"
        }
    .end annotation

    .line 427
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 428
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 440
    new-instance v3, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    .line 441
    iget-object p2, p0, Lcom/ibm/icu/text/ListFormatter;->start:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p2, v4, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    :goto_0
    add-int/lit8 p2, p1, -0x1

    if-ge v2, p2, :cond_0

    .line 443
    iget-object p2, p0, Lcom/ibm/icu/text/ListFormatter;->middle:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p2, v4, v2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 446
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter;->patternHandler:Lcom/ibm/icu/text/ListFormatter$PatternHandler;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/ListFormatter$PatternHandler;->getEndPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1, p2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    return-object p1

    .line 435
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 437
    new-instance v2, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-direct {v2, p1, p2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter;->patternHandler:Lcom/ibm/icu/text/ListFormatter$PatternHandler;

    .line 438
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ibm/icu/text/ListFormatter$PatternHandler;->getTwoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    return-object p1

    .line 433
    :cond_2
    new-instance p1, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    .line 431
    :cond_3
    new-instance p1, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public formatToValue(Ljava/util/Collection;)Lcom/ibm/icu/text/ListFormatter$FormattedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/ibm/icu/text/ListFormatter$FormattedList;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 419
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->toValue()Lcom/ibm/icu/text/ListFormatter$FormattedList;

    move-result-object p1

    return-object p1
.end method

.method public varargs formatToValue([Ljava/lang/Object;)Lcom/ibm/icu/text/ListFormatter$FormattedList;
    .locals 0

    .line 405
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/ListFormatter;->formatToValue(Ljava/util/Collection;)Lcom/ibm/icu/text/ListFormatter$FormattedList;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter;->locale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getPatternForNumItems(I)Ljava/lang/String;
    .locals 5

    if-lez p1, :cond_1

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 576
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "{%d}"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 572
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "count must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
