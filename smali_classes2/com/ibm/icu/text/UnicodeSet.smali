.class public Lcom/ibm/icu/text/UnicodeSet;
.super Lcom/ibm/icu/text/UnicodeFilter;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;
.implements Lcom/ibm/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/UnicodeSet$SpanCondition;,
        Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;,
        Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;,
        Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;,
        Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterable;,
        Lcom/ibm/icu/text/UnicodeSet$EntryRange;,
        Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;,
        Lcom/ibm/icu/text/UnicodeSet$VersionFilter;,
        Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;,
        Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;,
        Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;,
        Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;,
        Lcom/ibm/icu/text/UnicodeSet$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/text/UnicodeFilter;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/text/UnicodeSet;",
        ">;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/UnicodeSet;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ADD_CASE_MAPPINGS:I = 0x4

.field public static final ALL_CODE_POINTS:Lcom/ibm/icu/text/UnicodeSet;

.field private static final ANY_ID:Ljava/lang/String; = "ANY"

.field private static final ASCII_ID:Ljava/lang/String; = "ASCII"

.field private static final ASSIGNED:Ljava/lang/String; = "Assigned"

.field public static final CASE:I = 0x2

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final EMPTY:Lcom/ibm/icu/text/UnicodeSet;

.field private static final EMPTY_STRINGS:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIGH:I = 0x110000

.field public static final IGNORE_SPACE:I = 0x1

.field private static final INITIAL_CAPACITY:I = 0x19

.field private static final LAST0_START:I = 0x0

.field private static final LAST1_RANGE:I = 0x1

.field private static final LAST2_SET:I = 0x2

.field private static final LOW:I = 0x0

.field private static final MAX_DEPTH:I = 0x64

.field private static final MAX_LENGTH:I = 0x110001

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_VALUE:I = 0x0

.field private static final MODE0_NONE:I = 0x0

.field private static final MODE1_INBRACKET:I = 0x1

.field private static final MODE2_OUTBRACKET:I = 0x2

.field private static final NO_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field private static final SETMODE0_NONE:I = 0x0

.field private static final SETMODE1_UNICODESET:I = 0x1

.field private static final SETMODE2_PROPERTYPAT:I = 0x2

.field private static final SETMODE3_PREPARSED:I = 0x3

.field private static XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;


# instance fields
.field private volatile bmpSet:Lcom/ibm/icu/impl/BMPSet;

.field private buffer:[I

.field private len:I

.field private list:[I

.field private pat:Ljava/lang/String;

.field private rangeList:[I

.field private volatile stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

.field strings:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 290
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 291
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    .line 297
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    .line 302
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const v1, 0x10ffff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->ALL_CODE_POINTS:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v0, 0x0

    .line 304
    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    .line 3321
    invoke-static {v2, v2, v2, v2}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->NO_VERSION:Lcom/ibm/icu/util/VersionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 365
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V

    .line 337
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 366
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    const/high16 v2, 0x110000

    aput v2, v0, v1

    const/4 v0, 0x1

    .line 368
    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 375
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V

    .line 337
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 376
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 433
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 434
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 462
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)V
    .locals 1

    .line 479
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x1

    .line 480
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)V
    .locals 0

    .line 498
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 499
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 447
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 5

    .line 401
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V

    .line 337
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 402
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 405
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 406
    array-length v0, v0

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 409
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 410
    aget v2, p1, v1

    const-string v3, "Must be monotonically increasing."

    if-ge v0, v2, :cond_1

    .line 414
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v0, v1

    .line 415
    aget v1, p1, v4

    add-int/lit8 v1, v1, 0x1

    if-ge v2, v1, :cond_0

    add-int/lit8 v2, v4, 0x1

    .line 419
    aput v1, v0, v4

    move v0, v1

    move v1, v2

    goto :goto_0

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/high16 v0, 0x110000

    aput v0, p1, v1

    return-void

    .line 403
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must have even number of integers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static _appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;IZ)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 654
    :try_start_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 657
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/16 p2, 0x24

    const/16 v0, 0x5c

    if-eq p1, p2, :cond_1

    const/16 p2, 0x26

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2d

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7b

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7d

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 677
    invoke-static {p1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 678
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 673
    :cond_1
    :pswitch_0
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 682
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 685
    :goto_1
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static _appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 641
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 642
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 643
    invoke-static {p0, v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 641
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private _toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;Z)TT;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 712
    invoke-direct {p0, p1, p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 716
    :try_start_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p1

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 720
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5c

    if-ge v0, v3, :cond_5

    .line 721
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 722
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 723
    invoke-static {v3}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    invoke-static {p1, v3}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 734
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 736
    :cond_4
    invoke-static {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 741
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object p1

    :catch_0
    move-exception p1

    .line 745
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method static synthetic access$000()Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    .line 289
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->NO_VERSION:Lcom/ibm/icu/util/VersionInfo;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 0

    .line 289
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/UnicodeSet;)I
    .locals 0

    .line 289
    iget p0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    return p0
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/UnicodeSet;)[I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    return-object p0
.end method

.method private add([III)Lcom/ibm/icu/text/UnicodeSet;
    .locals 9

    .line 3105
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3107
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    .line 3108
    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    const/high16 v5, 0x110000

    const/4 v6, 0x2

    if-eqz p3, :cond_c

    if-eq p3, v2, :cond_8

    if-eq p3, v6, :cond_4

    const/4 v7, 0x3

    if-eq p3, v7, :cond_0

    goto :goto_0

    :cond_0
    if-gt v1, p2, :cond_2

    if-ne p2, v5, :cond_1

    goto/16 :goto_7

    .line 3155
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput p2, v1, v0

    goto :goto_1

    :cond_2
    if-ne v1, v5, :cond_3

    goto/16 :goto_7

    .line 3158
    :cond_3
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput v1, p2, v0

    .line 3160
    :goto_1
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 3161
    aget v3, p1, v4

    xor-int/2addr p3, v6

    move v4, v1

    move v1, v3

    move v3, v0

    move v0, v5

    goto :goto_0

    :cond_4
    if-ge v1, p2, :cond_5

    .line 3176
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput v1, v5, v0

    add-int/lit8 v0, v4, 0x1

    aget v1, p1, v4

    xor-int/lit8 p3, p3, 0x2

    move v4, v0

    goto :goto_2

    :cond_5
    if-ge p2, v1, :cond_6

    .line 3178
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    move v3, v5

    goto :goto_0

    :cond_6
    if-ne p2, v5, :cond_7

    goto/16 :goto_7

    .line 3181
    :cond_7
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 3182
    aget v4, p1, v4

    goto :goto_4

    :cond_8
    if-ge p2, v1, :cond_9

    .line 3165
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput p2, v5, v0

    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    move v3, v0

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_9
    if-ge v1, p2, :cond_a

    add-int/lit8 v1, v4, 0x1

    .line 3167
    aget v4, p1, v4

    xor-int/lit8 p3, p3, 0x2

    :goto_3
    move v8, v4

    move v4, v1

    move v1, v8

    goto/16 :goto_0

    :cond_a
    if-ne p2, v5, :cond_b

    goto/16 :goto_7

    .line 3170
    :cond_b
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 3171
    aget v4, p1, v4

    :goto_4
    xor-int/2addr p3, v6

    move v8, v3

    move v3, v1

    move v1, v4

    move v4, v8

    goto/16 :goto_0

    :cond_c
    if-ge p2, v1, :cond_e

    if-lez v0, :cond_d

    .line 3117
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, -0x1

    aget v6, v5, v6

    if-gt p2, v6, :cond_d

    .line 3119
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    invoke-static {p2, v5}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I

    move-result p2

    goto :goto_5

    .line 3122
    :cond_d
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput p2, v5, v0

    .line 3123
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    move v0, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_e
    if-ge v1, p2, :cond_10

    if-lez v0, :cond_f

    .line 3128
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, -0x1

    aget v6, v5, v6

    if-gt v1, v6, :cond_f

    .line 3129
    aget v1, p1, v4

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    invoke-static {v1, v5}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I

    move-result v1

    goto :goto_6

    .line 3131
    :cond_f
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput v1, v5, v0

    .line 3132
    aget v1, p1, v4

    move v0, v6

    :goto_6
    add-int/lit8 v4, v4, 0x1

    xor-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    :cond_10
    if-ne p2, v5, :cond_11

    .line 3187
    :goto_7
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 p2, v0, 0x1

    aput v5, p1, v0

    .line 3188
    iput p2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 3190
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3191
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3192
    iput-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    const/4 p1, 0x0

    .line 3193
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    :cond_11
    if-lez v0, :cond_12

    .line 3140
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, -0x1

    aget v5, v1, v5

    if-gt p2, v5, :cond_12

    .line 3141
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    invoke-static {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I

    move-result p2

    goto :goto_8

    .line 3144
    :cond_12
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput p2, v1, v0

    .line 3145
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    move v0, v5

    :goto_8
    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 3149
    aget v4, p1, v4

    xor-int/2addr p3, v6

    goto/16 :goto_3
.end method

.method public static addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TU;)TU;"
        }
    .end annotation

    .line 4678
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4679
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 4690
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 4691
    aput-object v1, p1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static final addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x1f

    if-le p1, v0, :cond_0

    .line 3869
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 3872
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    const/4 p0, 0x0

    .line 3873
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addString(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1379
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v0, v1, :cond_0

    .line 1380
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    if-ltz p1, :cond_7

    const v0, 0x10ffff

    if-gt p1, v0, :cond_7

    .line 1274
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    return-object p0

    .line 1294
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 1296
    aput p1, v2, v1

    if-ne p1, v0, :cond_1

    .line 1299
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1300
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/high16 v3, 0x110000

    aput v3, v0, v2

    :cond_1
    if-lez v1, :cond_6

    .line 1302
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    if-ne p1, v3, :cond_6

    add-int/lit8 p1, v1, 0x1

    .line 1308
    iget v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1309
    iget p1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    .line 1313
    aget v3, v2, v0

    if-ne p1, v3, :cond_3

    .line 1315
    aget p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    aput p1, v2, v0

    goto :goto_1

    .line 1335
    :cond_3
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v3, v0, 0x2

    array-length v4, v2

    if-le v3, v4, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 1336
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->nextCapacity(I)I

    move-result v0

    new-array v0, v0, [I

    if-eqz v1, :cond_4

    .line 1337
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1338
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1339
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v1

    .line 1341
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 1345
    aput p1, v0, v1

    .line 1346
    iget p1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 1349
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    .line 1268
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const/4 p1, 0x6

    invoke-static {v2, v3, p1}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 6

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_8

    const v2, 0x10ffff

    if-gt p1, v2, :cond_8

    if-ltz p2, :cond_7

    if-gt p2, v2, :cond_7

    if-ge p1, p2, :cond_5

    add-int/lit8 v0, p2, 0x1

    .line 1200
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x2

    goto :goto_0

    .line 1202
    :cond_0
    iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    sub-int/2addr v1, v3

    aget v1, v4, v1

    :goto_0
    if-gt v1, p1, :cond_4

    .line 1204
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/high16 p2, 0x110000

    if-ne v1, p1, :cond_1

    .line 1207
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v3, v1, -0x2

    aput v0, p1, v3

    if-ne v0, p2, :cond_3

    sub-int/2addr v1, v2

    .line 1209
    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    goto :goto_1

    .line 1212
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v5, v4, -0x1

    aput p1, v1, v5

    if-ge v0, p2, :cond_2

    add-int/2addr v4, v3

    .line 1214
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1215
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    aput v0, p1, v1

    add-int/lit8 v0, v2, 0x1

    .line 1216
    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    aput p2, p1, v2

    goto :goto_1

    :cond_2
    add-int/2addr v4, v2

    .line 1218
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1219
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    aput p2, p1, v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 1222
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    .line 1228
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v3, p2}, Lcom/ibm/icu/text/UnicodeSet;->add([III)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_2

    :cond_5
    if-ne p1, p2, :cond_6

    .line 1230
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_6
    :goto_2
    return-object p0

    .line 1194
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1191
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 629
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 631
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)V
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    .line 614
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 616
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 619
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;ZZ)TT;"
        }
    .end annotation

    const/16 v0, 0x5b

    .line 776
    :try_start_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 778
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 784
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v0, -0x1

    .line 785
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    const v5, 0x10ffff

    if-ne v4, v5, :cond_2

    const/16 v2, 0x5e

    .line 788
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_5

    add-int/lit8 v4, v2, -0x1

    .line 791
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 792
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v5

    sub-int/2addr v5, v3

    .line 793
    invoke-static {p1, v4, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    if-eq v4, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v5, :cond_0

    .line 796
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 798
    :cond_0
    invoke-static {p1, v5, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_5

    .line 806
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v3

    .line 807
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    .line 808
    invoke-static {p1, v3, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v4, :cond_3

    .line 811
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 813
    :cond_3
    invoke-static {p1, v4, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 818
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 819
    iget-object p3, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x7b

    .line 820
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 821
    invoke-static {p1, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    const/16 v0, 0x7d

    .line 822
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_6
    const/16 p2, 0x5d

    .line 825
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 828
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method private applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 7

    .line 3350
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 3353
    invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3357
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    .line 3358
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v5

    :goto_1
    if-gt v4, v5, :cond_2

    .line 3364
    invoke-interface {p1, v4}, Lcom/ibm/icu/text/UnicodeSet$Filter;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-gez v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_0
    if-ltz v3, :cond_1

    add-int/lit8 v6, v4, -0x1

    .line 3369
    invoke-direct {p0, v3, v6}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    const/4 v3, -0x1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ltz v3, :cond_4

    const p1, 0x10ffff

    .line 3375
    invoke-direct {p0, v3, p1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_4
    return-void
.end method

.method private applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/Appendable;II)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p5

    const/16 v0, 0x64

    if-le v11, v0, :cond_0

    const-string v0, "Pattern nested too deeply"

    .line 2542
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    const/4 v13, 0x7

    goto :goto_0

    :cond_1
    const/4 v13, 0x3

    .line 2555
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2567
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    if-eq v0, v7, :cond_3b

    .line 2570
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v21

    if-nez v21, :cond_3b

    .line 2590
    invoke-static {v8, v13}, Lcom/ibm/icu/text/UnicodeSet;->resemblesPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;I)Z

    move-result v21

    const/16 v12, 0x5e

    if-eqz v21, :cond_2

    move-object v7, v2

    move/from16 v24, v19

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x2

    :goto_2
    move/from16 v19, v0

    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 2604
    :cond_2
    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2605
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v5

    .line 2606
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v24

    const/16 v7, 0x5b

    if-ne v5, v7, :cond_6

    if-nez v24, :cond_6

    if-ne v0, v6, :cond_3

    .line 2610
    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    move-object v7, v2

    move v2, v5

    move/from16 v5, v24

    const/4 v12, 0x1

    goto/16 :goto_6

    .line 2615
    :cond_3
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2616
    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2617
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v2

    .line 2618
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v5

    if-ne v2, v12, :cond_4

    if-nez v5, :cond_4

    .line 2621
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2622
    invoke-virtual {v8, v0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2623
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v2

    .line 2624
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    const/16 v5, 0x2d

    const/16 v19, 0x1

    goto :goto_4

    :cond_4
    const/16 v5, 0x2d

    :goto_4
    move/from16 v27, v2

    move-object v2, v0

    move/from16 v0, v27

    if-ne v0, v5, :cond_5

    move-object v7, v2

    move/from16 v24, v19

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/16 v19, 0x1

    move v2, v0

    goto :goto_3

    .line 2632
    :cond_5
    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_5
    const/4 v7, 0x2

    goto :goto_1

    :cond_6
    if-eqz v9, :cond_7

    .line 2637
    invoke-interface {v9, v5}, Lcom/ibm/icu/text/SymbolTable;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 2640
    :try_start_0
    check-cast v7, Lcom/ibm/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x3

    move/from16 v27, v19

    move/from16 v19, v0

    move-object v0, v7

    move-object v7, v2

    move v2, v5

    move/from16 v5, v24

    move/from16 v24, v27

    goto :goto_7

    :catch_0
    const-string v7, "Syntax error"

    .line 2643
    invoke-static {v8, v7}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_7
    move-object v7, v2

    move v2, v5

    move/from16 v5, v24

    const/4 v12, 0x0

    :goto_6
    move/from16 v24, v19

    goto/16 :goto_2

    :goto_7
    const/16 v10, 0x26

    if-eqz v12, :cond_15

    if-ne v3, v6, :cond_9

    if-eqz v15, :cond_8

    const-string v2, "Char expected after operator"

    .line 2657
    invoke-static {v8, v2}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2659
    :cond_8
    invoke-direct {v1, v4, v4}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x0

    .line 2660
    invoke-static {v14, v4, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    const/16 v5, 0x2d

    const/4 v15, 0x0

    goto :goto_8

    :cond_9
    const/16 v5, 0x2d

    :goto_8
    if-eq v15, v5, :cond_a

    if-ne v15, v10, :cond_b

    .line 2666
    :cond_a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    if-nez v0, :cond_d

    if-nez v16, :cond_c

    .line 2670
    new-instance v16, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct/range {v16 .. v16}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    :cond_c
    move-object/from16 v0, v16

    :cond_d
    if-eq v12, v6, :cond_10

    const/4 v3, 0x2

    if-eq v12, v3, :cond_f

    const/4 v2, 0x3

    if-eq v12, v2, :cond_e

    :goto_9
    move v12, v4

    move-object/from16 v26, v7

    const/16 v21, 0x3

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    .line 2682
    invoke-direct {v0, v14, v12}, Lcom/ibm/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    goto :goto_9

    :cond_f
    const/4 v2, 0x3

    const/4 v12, 0x0

    .line 2678
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    .line 2679
    invoke-direct {v0, v8, v14, v9}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/SymbolTable;)V

    goto :goto_9

    :cond_10
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v12, 0x0

    add-int/lit8 v20, v11, 0x1

    const/16 v21, 0x3

    move-object v2, v0

    const/16 v22, 0x2

    move-object/from16 v3, p1

    move v12, v4

    move-object/from16 v4, p2

    const/16 v23, 0x2d

    move-object v5, v14

    move/from16 v6, p4

    move-object/from16 v26, v7

    move/from16 v7, v20

    .line 2675
    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/Appendable;II)V

    :goto_a
    if-nez v19, :cond_11

    .line 2690
    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move/from16 v19, v24

    const/4 v0, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v25, 0x1

    goto/16 :goto_1c

    :cond_11
    if-eqz v15, :cond_14

    if-eq v15, v10, :cond_13

    const/16 v4, 0x2d

    if-eq v15, v4, :cond_12

    goto :goto_b

    .line 2697
    :cond_12
    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_b

    .line 2700
    :cond_13
    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_b

    .line 2703
    :cond_14
    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    :goto_b
    move-object/from16 v10, p3

    move v4, v12

    move/from16 v0, v19

    move/from16 v19, v24

    move-object/from16 v2, v26

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v15, 0x0

    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_15
    move v12, v4

    move-object/from16 v26, v7

    const/16 v4, 0x2d

    const/16 v21, 0x3

    if-nez v19, :cond_16

    const-string v0, "Missing \'[\'"

    .line 2714
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_16
    const/16 v0, 0x24

    if-nez v5, :cond_32

    const/16 v5, 0x5d

    if-eq v2, v0, :cond_2d

    if-eq v2, v10, :cond_2b

    if-eq v2, v4, :cond_27

    const/16 v6, 0x7b

    if-eq v2, v6, :cond_1c

    if-eq v2, v5, :cond_18

    const/16 v0, 0x5e

    if-eq v2, v0, :cond_17

    goto/16 :goto_15

    :cond_17
    const-string v0, "\'^\' not after \'[\'"

    .line 2768
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_18
    const/4 v7, 0x1

    if-ne v3, v7, :cond_19

    .line 2725
    invoke-direct {v1, v12, v12}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x0

    .line 2726
    invoke-static {v14, v12, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    goto :goto_c

    :cond_19
    const/4 v2, 0x0

    :goto_c
    if-ne v15, v4, :cond_1a

    .line 2730
    invoke-direct {v1, v15, v15}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2731
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1a
    if-ne v15, v10, :cond_1b

    const-string v0, "Trailing \'&\'"

    .line 2733
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2735
    :cond_1b
    :goto_d
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    move v4, v12

    move/from16 v19, v24

    move-object/from16 v2, v26

    const/4 v0, 0x2

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_1c
    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v15, :cond_1d

    if-eq v15, v4, :cond_1d

    const-string v0, "Missing operand after operator"

    .line 2772
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_1d
    if-ne v3, v7, :cond_1e

    .line 2775
    invoke-direct {v1, v12, v12}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2776
    invoke-static {v14, v12, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_1e
    move-object/from16 v10, v18

    if-nez v10, :cond_1f

    .line 2780
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v18

    goto :goto_e

    .line 2782
    :cond_1f
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2785
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v0

    const/16 v3, 0x7d

    if-nez v0, :cond_21

    .line 2786
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v0

    .line 2787
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v5

    if-ne v0, v3, :cond_20

    if-nez v5, :cond_20

    const/4 v0, 0x1

    goto :goto_f

    .line 2792
    :cond_20
    invoke-static {v10, v0}, Lcom/ibm/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    goto :goto_e

    :cond_21
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_22

    const-string v0, "Invalid multicharacter string"

    .line 2795
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2800
    :cond_22
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-ne v15, v4, :cond_26

    move-object/from16 v0, v17

    if-nez v0, :cond_23

    const-string v17, ""

    goto :goto_10

    :cond_23
    move-object/from16 v17, v0

    .line 2802
    :goto_10
    invoke-static/range {v17 .. v17}, Lcom/ibm/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v4

    .line 2803
    invoke-static {v5}, Lcom/ibm/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v15

    const v3, 0x7fffffff

    if-eq v4, v3, :cond_24

    if-eq v15, v3, :cond_24

    .line 2805
    invoke-virtual {v1, v4, v15}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_11

    .line 2807
    :cond_24
    iget-object v3, v1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v4, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v3, v4, :cond_25

    .line 2808
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    iput-object v3, v1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 2811
    :cond_25
    :try_start_1
    iget-object v3, v1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v0, v5, v7, v3}, Lcom/ibm/icu/impl/StringRange;->expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :catch_1
    move-exception v0

    .line 2813
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :goto_11
    const/4 v0, 0x0

    const/4 v15, 0x0

    goto :goto_12

    .line 2819
    :cond_26
    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-object v0, v5

    .line 2822
    :goto_12
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2823
    invoke-static {v14, v5, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    const/16 v3, 0x7d

    .line 2824
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move v4, v12

    move/from16 v0, v19

    move/from16 v19, v24

    move-object/from16 v2, v26

    const/4 v3, 0x0

    goto/16 :goto_1a

    :cond_27
    move-object/from16 v0, v17

    move-object/from16 v10, v18

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v15, :cond_2a

    if-eqz v3, :cond_28

    goto :goto_13

    :cond_28
    if-eqz v0, :cond_29

    goto :goto_13

    .line 2748
    :cond_29
    invoke-direct {v1, v2, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2749
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v2

    .line 2750
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v17

    if-ne v2, v5, :cond_2a

    if-nez v17, :cond_2a

    const-string v2, "-]"

    .line 2752
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move v4, v12

    move/from16 v19, v24

    move-object/from16 v2, v26

    const/4 v0, 0x2

    goto/16 :goto_1a

    :cond_2a
    const-string v5, "\'-\' not after char, string, or set"

    .line 2758
    invoke-static {v8, v5}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    move-object/from16 v17, v0

    goto/16 :goto_17

    :cond_2b
    move-object/from16 v0, v17

    move-object/from16 v10, v18

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_2c

    if-nez v15, :cond_2c

    :goto_13
    int-to-char v15, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move v4, v12

    goto/16 :goto_19

    :cond_2c
    const-string v5, "\'&\' not after set"

    .line 2765
    invoke-static {v8, v5}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    move-object/from16 v17, v0

    move-object/from16 v4, v26

    goto :goto_16

    :cond_2d
    move-object/from16 v10, v18

    move-object/from16 v4, v26

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2833
    invoke-virtual {v8, v4}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2834
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v4

    .line 2835
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v18

    if-ne v4, v5, :cond_2e

    if-nez v18, :cond_2e

    const/16 v18, 0x1

    goto :goto_14

    :cond_2e
    const/16 v18, 0x0

    :goto_14
    if-nez v9, :cond_2f

    if-nez v18, :cond_2f

    .line 2839
    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    move-object/from16 v26, v2

    const/16 v2, 0x24

    goto :goto_17

    :cond_2f
    if-eqz v18, :cond_31

    if-nez v15, :cond_31

    if-ne v3, v7, :cond_30

    .line 2844
    invoke-direct {v1, v12, v12}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2845
    invoke-static {v14, v12, v6}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_30
    const v4, 0xffff

    .line 2847
    invoke-direct {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 2849
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    move v4, v12

    move/from16 v19, v24

    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v20, 0x1

    goto/16 :goto_1b

    :cond_31
    const-string v0, "Unquoted \'$\'"

    .line 2853
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    move-object/from16 v26, v2

    move v2, v4

    goto :goto_17

    :cond_32
    :goto_15
    move-object/from16 v10, v18

    move-object/from16 v4, v26

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_16
    move-object/from16 v26, v4

    :goto_17
    const-string v0, "Invalid range"

    if-eqz v3, :cond_39

    if-eq v3, v7, :cond_35

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    move v2, v12

    goto :goto_18

    :cond_33
    if-eqz v15, :cond_34

    const-string v0, "Set expected after operator"

    .line 2897
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_34
    const/4 v3, 0x1

    goto :goto_18

    :cond_35
    const/4 v4, 0x2

    const/16 v5, 0x2d

    if-ne v15, v5, :cond_38

    if-eqz v17, :cond_36

    .line 2876
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_36
    if-lt v12, v2, :cond_37

    .line 2881
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2883
    :cond_37
    invoke-direct {v1, v12, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2884
    invoke-static {v14, v12, v6}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2885
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2886
    invoke-static {v14, v2, v6}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move v2, v12

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto :goto_18

    .line 2890
    :cond_38
    invoke-direct {v1, v12, v12}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2891
    invoke-static {v14, v12, v6}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    goto :goto_18

    :cond_39
    const/16 v3, 0x2d

    const/4 v4, 0x2

    if-ne v15, v3, :cond_3a

    if-eqz v17, :cond_3a

    .line 2867
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_3a
    const/4 v3, 0x1

    const/16 v17, 0x0

    :goto_18
    move v4, v2

    move-object/from16 v18, v10

    :goto_19
    move/from16 v0, v19

    move/from16 v19, v24

    move-object/from16 v2, v26

    :goto_1a
    const/4 v6, 0x1

    const/4 v7, 0x2

    :goto_1b
    move-object/from16 v10, p3

    goto/16 :goto_1

    :cond_3b
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v25, v20

    :goto_1c
    if-eq v0, v4, :cond_3c

    const-string v0, "Missing \']\'"

    .line 2906
    invoke-static {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2909
    :cond_3c
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_3d

    .line 2918
    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->closeOver(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_3d
    if-eqz v19, :cond_3e

    .line 2921
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    :cond_3e
    if-eqz v25, :cond_3f

    .line 2927
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_3f
    move-object/from16 v2, p3

    .line 2929
    invoke-direct {v1, v2, v6, v7}, Lcom/ibm/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    :goto_1d
    return-void
.end method

.method private applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 12

    .line 3692
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int/lit8 v0, v6, 0x5

    .line 3697
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x0

    if-le v0, v1, :cond_0

    return-object v7

    :cond_0
    const-string v0, "[:"

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 3706
    invoke-virtual {p1, v6, v0, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    add-int/2addr v6, v9

    .line 3708
    invoke-static {p1, v6}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3709
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x1

    goto :goto_4

    :cond_2
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v3, "\\p"

    move-object v0, p1

    move v2, v6

    .line 3713
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\\N"

    .line 3714
    invoke-virtual {p1, v6, v0, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return-object v7

    :cond_4
    :goto_1
    add-int/lit8 v0, v6, 0x1

    .line 3715
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x4e

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    add-int/2addr v6, v9

    .line 3718
    invoke-static {p1, v6}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 3719
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_e

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_7

    goto :goto_8

    :cond_7
    move v2, v1

    move v1, v0

    move v0, v3

    :goto_4
    if-eqz v8, :cond_8

    const-string v3, ":]"

    goto :goto_5

    :cond_8
    const-string v3, "}"

    .line 3729
    :goto_5
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_9

    return-object v7

    :cond_9
    const/16 v4, 0x3d

    .line 3738
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_a

    if-ge v4, v3, :cond_a

    if-nez v1, :cond_a

    .line 3742
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v4, v10

    .line 3743
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 3748
    :cond_a
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_b

    const-string p1, "na"

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_6

    :cond_b
    const-string p1, ""

    .line 3763
    :goto_6
    invoke-virtual {p0, v0, p1, p3}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v2, :cond_c

    .line 3766
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    :cond_c
    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    const/4 v9, 0x1

    :goto_7
    add-int/2addr v3, v9

    .line 3770
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object p0

    :cond_e
    :goto_8
    return-object v7
.end method

.method private applyPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/SymbolTable;)V
    .locals 3

    .line 3787
    invoke-virtual {p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    move-result-object v0

    .line 3788
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3789
    invoke-direct {p0, v0, v1, p3}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3790
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "Invalid property pattern"

    .line 3791
    invoke-static {p1, p3}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 3793
    :cond_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    .line 3794
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkFrozen()V
    .locals 2

    .line 4252
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4253
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(ILjava/lang/CharSequence;)I
    .locals 0

    .line 4616
    invoke-static {p1, p0}, Lcom/ibm/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 4605
    invoke-static {p0, p1}, Lcom/ibm/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 4629
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/util/Iterator;Ljava/util/Iterator;)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/util/Collection;Ljava/util/Collection;Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;",
            ")I"
        }
    .end annotation

    .line 4664
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    if-eq p2, v0, :cond_3

    .line 4665
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4667
    :goto_0
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v1, :cond_1

    const/4 p0, 0x1

    :cond_1
    if-ne v0, p0, :cond_2

    const/4 p1, -0x1

    :cond_2
    return p1

    .line 4670
    :cond_3
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/util/Iterator;Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4644
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4645
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 4646
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 4649
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 4650
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 4651
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0
.end method

.method private containsAll(Ljava/lang/String;I)Z
    .locals 4

    .line 2040
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    return v1

    .line 2043
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 2044
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2047
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2048
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2049
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private ensureBufferCapacity(I)V
    .locals 1

    const v0, 0x110001

    if-le p1, v0, :cond_0

    const p1, 0x110001

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-gt p1, v0, :cond_1

    return-void

    .line 3028
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->nextCapacity(I)I

    move-result p1

    .line 3029
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    const v0, 0x110001

    if-le p1, v0, :cond_0

    const p1, 0x110001

    .line 3015
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    if-gt p1, v0, :cond_1

    return-void

    .line 3016
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->nextCapacity(I)I

    move-result p1

    .line 3017
    new-array p1, p1, [I

    .line 3019
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3020
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    return-void
.end method

.method private final findCodePoint(I)I
    .locals 4

    .line 1754
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ge p1, v2, :cond_0

    return v1

    .line 1757
    :cond_0
    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    aget v0, v0, v3

    if-lt p1, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :goto_0
    add-int v0, v1, v2

    ushr-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    return v2

    .line 1765
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v0

    if-ge p1, v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public static from(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1476
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static fromAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1487
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultXSymbolTable()Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4910
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    return-object v0
.end method

.method private static getSingleCP(Ljava/lang/CharSequence;)I
    .locals 3

    .line 1394
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0

    .line 1395
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1396
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4720
    invoke-static {p0}, Lcom/ibm/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method private static matchRest(Lcom/ibm/icu/text/Replaceable;IILjava/lang/String;)I
    .locals 5

    .line 1013
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, p2, :cond_2

    sub-int/2addr p2, p1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-ge v2, v0, :cond_6

    add-int p2, p1, v2

    .line 1018
    invoke-interface {p0, p2}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result p2

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq p2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-int p2, p1, p2

    if-le p2, v0, :cond_3

    move p2, v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ge v2, p2, :cond_5

    sub-int v3, p1, v2

    .line 1025
    invoke-interface {p0, v3}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v3

    sub-int v4, v0, v2

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, p2

    :cond_6
    return v0
.end method

.method private static matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I
    .locals 5

    .line 1079
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1080
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, -0x1

    if-le v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1086
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1087
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static final max(II)I
    .locals 0

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method private static mungeCharName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3384
    invoke-static {p0}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3386
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3387
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3388
    invoke-static {v3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_2

    if-nez v1, :cond_0

    .line 3390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3391
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v3, 0x20

    :cond_2
    if-eqz v1, :cond_3

    .line 3397
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    goto :goto_3

    .line 3400
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private nextCapacity(I)I
    .locals 1

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x9c4

    if-gt p1, v0, :cond_1

    mul-int/lit8 p1, p1, 0x5

    return p1

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    const v0, 0x110001

    if-le p1, v0, :cond_2

    const p1, 0x110001

    :cond_2
    return p1
.end method

.method private range(II)[I
    .locals 3

    .line 3038
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput p1, v0, v1

    add-int/2addr p2, v2

    aput p2, v0, v2

    const/4 p1, 0x2

    const/high16 p2, 0x110000

    aput p2, v0, p1

    .line 3039
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    goto :goto_0

    .line 3041
    :cond_0
    aput p1, v0, v1

    add-int/2addr p2, v2

    .line 3042
    aput p2, v0, v2

    .line 3044
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    return-object p1
.end method

.method public static resemblesPattern(Ljava/lang/String;I)Z
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 601
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    .line 602
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->resemblesPropertyPattern(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static resemblesPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;I)Z
    .locals 5

    and-int/lit8 p1, p1, -0x3

    const/4 v0, 0x0

    .line 3676
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3677
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_3

    :cond_0
    and-int/lit8 p1, p1, -0x5

    .line 3679
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result p1

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_1
    const/16 v1, 0x4e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x70

    if-eq p1, v1, :cond_2

    const/16 v1, 0x50

    if-ne p1, v1, :cond_3

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 3683
    :cond_3
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    return v3
.end method

.method private static resemblesPropertyPattern(Ljava/lang/String;I)Z
    .locals 9

    add-int/lit8 v0, p1, 0x5

    .line 3654
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "[:"

    const/4 v1, 0x2

    .line 3659
    invoke-virtual {p0, p1, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v6, "\\p"

    move-object v3, p0

    move v5, p1

    .line 3660
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\N"

    .line 3661
    invoke-virtual {p0, p1, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private retain([III)Lcom/ibm/icu/text/UnicodeSet;
    .locals 9

    .line 3203
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3205
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    .line 3206
    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    const/high16 v5, 0x110000

    const/4 v6, 0x2

    if-eqz p3, :cond_c

    if-eq p3, v2, :cond_8

    if-eq p3, v6, :cond_4

    const/4 v7, 0x3

    if-eq p3, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, v1, :cond_1

    .line 3225
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput p2, v5, v0

    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    :goto_1
    xor-int/lit8 p3, p3, 0x1

    move v3, v0

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_1
    if-ge v1, p2, :cond_2

    .line 3227
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput v1, v5, v0

    add-int/lit8 v0, v4, 0x1

    aget v1, p1, v4

    goto :goto_4

    :cond_2
    if-ne p2, v5, :cond_3

    goto/16 :goto_7

    .line 3230
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput p2, v1, v0

    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 3231
    aget v3, p1, v4

    goto/16 :goto_8

    :cond_4
    if-ge v1, p2, :cond_5

    add-int/lit8 v1, v4, 0x1

    .line 3247
    aget v4, p1, v4

    :goto_3
    xor-int/lit8 p3, p3, 0x2

    move v8, v4

    move v4, v1

    move v1, v8

    goto :goto_0

    :cond_5
    if-ge p2, v1, :cond_6

    .line 3249
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput p2, v5, v0

    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    goto :goto_7

    .line 3252
    :cond_7
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 3253
    aget v4, p1, v4

    goto :goto_5

    :cond_8
    if-ge p2, v1, :cond_9

    .line 3236
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v3, 0x1

    aget p2, p2, v3

    goto :goto_6

    :cond_9
    if-ge v1, p2, :cond_a

    .line 3238
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput v1, v5, v0

    add-int/lit8 v0, v4, 0x1

    aget v1, p1, v4

    :goto_4
    xor-int/lit8 p3, p3, 0x2

    move v4, v0

    goto :goto_2

    :cond_a
    if-ne p2, v5, :cond_b

    goto :goto_7

    .line 3241
    :cond_b
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 3242
    aget v4, p1, v4

    :goto_5
    xor-int/2addr p3, v6

    move v8, v3

    move v3, v1

    move v1, v4

    move v4, v8

    goto/16 :goto_0

    :cond_c
    if-ge p2, v1, :cond_d

    .line 3214
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v3, 0x1

    aget p2, p2, v3

    :goto_6
    xor-int/lit8 p3, p3, 0x1

    move v3, v5

    goto/16 :goto_0

    :cond_d
    if-ge v1, p2, :cond_e

    add-int/lit8 v1, v4, 0x1

    .line 3216
    aget v4, p1, v4

    goto :goto_3

    :cond_e
    if-ne p2, v5, :cond_f

    .line 3258
    :goto_7
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 p2, v0, 0x1

    aput v5, p1, v0

    .line 3259
    iput p2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 3261
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3262
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3263
    iput-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    const/4 p1, 0x0

    .line 3264
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    .line 3219
    :cond_f
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput p2, v1, v0

    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 3220
    aget v3, p1, v4

    :goto_8
    xor-int/2addr p3, v6

    move v4, v1

    move v1, v3

    move v3, v0

    move v0, v5

    goto/16 :goto_0
.end method

.method public static setDefaultXSymbolTable(Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4930
    invoke-static {}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->clear()V

    .line 4931
    sput-object p0, Lcom/ibm/icu/text/UnicodeSet;->XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    return-void
.end method

.method private spanCodePointsAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I
    .locals 4

    .line 4159
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4163
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4166
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 4167
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eq p3, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 4171
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    if-lt p2, v0, :cond_1

    :goto_1
    if-eqz p4, :cond_3

    .line 4173
    iput v1, p4, Lcom/ibm/icu/util/OutputInt;->value:I

    :cond_3
    return p2
.end method

.method private static syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
    .locals 3

    .line 2934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    invoke-virtual {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toArray(Lcom/ibm/icu/text/UnicodeSet;)[Ljava/lang/String;
    .locals 1

    .line 2963
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private xor([III)Lcom/ibm/icu/text/UnicodeSet;
    .locals 6

    .line 3055
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3057
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    goto :goto_0

    .line 3070
    :cond_0
    aget p3, p1, v0

    goto :goto_1

    .line 3064
    :cond_1
    :goto_0
    aget p3, p1, v0

    if-nez p3, :cond_2

    .line 3066
    aget p3, p1, v1

    :goto_1
    move v0, p3

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-ge p2, v0, :cond_3

    .line 3076
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v4, p3, 0x1

    aput p2, v3, p3

    .line 3077
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 p3, v2, 0x1

    aget p2, p2, v2

    move v2, p3

    :goto_4
    move p3, v4

    goto :goto_3

    :cond_3
    if-ge v0, p2, :cond_4

    .line 3079
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v4, p3, 0x1

    aput v0, v3, p3

    add-int/lit8 v0, v1, 0x1

    .line 3080
    aget p3, p1, v1

    move v1, v0

    move v0, p3

    goto :goto_4

    :cond_4
    const/high16 v0, 0x110000

    if-eq p2, v0, :cond_5

    .line 3083
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v2, 0x1

    aget p2, p2, v2

    add-int/lit8 v2, v1, 0x1

    .line 3084
    aget v1, p1, v1

    move v5, v2

    move v2, v0

    move v0, v1

    move v1, v5

    goto :goto_3

    .line 3086
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 p2, p3, 0x1

    aput v0, p1, p3

    .line 3087
    iput p2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 3092
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3093
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3094
    iput-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    const/4 p1, 0x0

    .line 3095
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public _generatePattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 758
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public _generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
    .locals 0

    .line 770
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public final add(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1261
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1262
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public add(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1172
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1173
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1364
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1365
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1367
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1368
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addString(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 1370
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_0

    .line 1373
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/Iterable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/ibm/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 2974
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public addAll(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1184
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1185
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 2237
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2238
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 2239
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2240
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v0, v1, :cond_0

    .line 2241
    new-instance v0, Ljava/util/TreeSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    goto :goto_0

    .line 2243
    :cond_0
    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .line 1412
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    .line 1414
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1415
    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1416
    invoke-direct {p0, v1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 1414
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/ibm/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 2985
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2986
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2987
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addAll([Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)",
            "Lcom/ibm/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4489
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 4490
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4491
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAllTo(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>(TT;)TT;"
        }
    .end annotation

    .line 2945
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public addAllTo([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 2955
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public addBridges(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4734
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    .line 4735
    new-instance v1, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSetIterator;->nextRange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4736
    iget v0, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    sget v2, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v0, v2, :cond_0

    iget v0, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I

    const v2, 0x10ffff

    if-eq v0, v2, :cond_0

    iget v0, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    iget v2, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-virtual {p1, v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4737
    iget v0, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    iget v2, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .line 1102
    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    .line 3433
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 3434
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x7000

    if-ne p1, v0, :cond_1

    .line 3436
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 3437
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_4

    const/16 v0, 0x41

    if-ge p1, v0, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 3445
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    .line 3440
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/ibm/icu/lang/CharacterProperties;->getBinaryPropertySet(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    if-nez p2, :cond_5

    .line 3442
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    :cond_4
    const/16 v0, 0x1000

    if-gt v0, p1, :cond_6

    const/16 v0, 0x1019

    if-ge p1, v0, :cond_6

    .line 3448
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    .line 3449
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;-><init>(II)V

    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;Lcom/ibm/icu/text/UnicodeSet;)V

    :cond_5
    :goto_1
    return-object p0

    .line 3451
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .line 559
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 560
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public applyPattern(Ljava/lang/String;I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 590
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2481
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2484
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2485
    new-instance v9, Lcom/ibm/icu/impl/RuleCharacterIterator;

    invoke-direct {v9, p1, p3, p2}, Lcom/ibm/icu/impl/RuleCharacterIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;Ljava/text/ParsePosition;)V

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v9

    move-object v5, p3

    move-object v6, v1

    move v7, p4

    .line 2487
    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/Appendable;II)V

    .line 2488
    invoke-virtual {v9}, Lcom/ibm/icu/impl/RuleCharacterIterator;->inVariable()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Extra chars in variable value"

    .line 2489
    invoke-static {v9, p3}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2491
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2493
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_3

    .line 2497
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 2500
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p2, p3, :cond_4

    goto :goto_1

    .line 2501
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse of \""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" failed at "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5
    :goto_1
    return-object p0
.end method

.method public applyPattern(Ljava/lang/String;Z)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 574
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    const/4 v0, 0x0

    .line 3486
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 7

    .line 3502
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    if-eqz p3, :cond_0

    .line 3507
    instance-of v0, p3, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    .line 3509
    invoke-virtual {p3, p1, p2, p0}, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p0

    .line 3513
    :cond_0
    sget-object p3, Lcom/ibm/icu/text/UnicodeSet;->XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    if-eqz p3, :cond_1

    .line 3514
    invoke-virtual {p3, p1, p2, p0}, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p0

    .line 3519
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x41

    const/16 v1, 0x100a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x2000

    const/4 v5, -0x1

    if-lez p3, :cond_10

    .line 3520
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result p1

    const/16 p3, 0x1005

    if-ne p1, p3, :cond_2

    const/16 p1, 0x2000

    :cond_2
    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_5

    :cond_3
    const/16 p3, 0x1000

    if-lt p1, p3, :cond_4

    const/16 p3, 0x1019

    if-lt p1, p3, :cond_5

    :cond_4
    if-lt p1, v4, :cond_9

    const/16 p3, 0x2001

    if-ge p1, p3, :cond_9

    .line 3531
    :cond_5
    :try_start_0
    invoke-static {p1, p2}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, p1

    goto/16 :goto_3

    :catch_0
    move-exception p3

    const/16 v0, 0x1002

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1010

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1011

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 3541
    :cond_6
    throw p3

    .line 3537
    :cond_7
    :goto_1
    invoke-static {p2}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    const/16 p2, 0xff

    if-gt v2, p2, :cond_8

    goto :goto_0

    .line 3539
    :cond_8
    throw p3

    :cond_9
    const/16 p3, 0x3000

    if-eq p1, p3, :cond_f

    const/16 p3, 0x4000

    if-eq p1, p3, :cond_e

    const/16 p3, 0x4005

    if-eq p1, p3, :cond_c

    const/16 p3, 0x400b

    if-eq p1, p3, :cond_b

    const/16 p3, 0x7000

    if-ne p1, p3, :cond_a

    .line 3583
    invoke-static {v1, p2}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    .line 3589
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported property"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3571
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unicode_1_Name (na1) not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3560
    :cond_c
    invoke-static {p2}, Lcom/ibm/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3561
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_d

    .line 3565
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 3566
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;

    return-object p0

    .line 3563
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid character name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3577
    :cond_e
    invoke-static {p2}, Lcom/ibm/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p2

    .line 3578
    new-instance p3, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;

    invoke-direct {p3, p2}, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;-><init>(Lcom/ibm/icu/util/VersionInfo;)V

    .line 3579
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 3578
    invoke-direct {p0, p3, p1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;Lcom/ibm/icu/text/UnicodeSet;)V

    return-object p0

    .line 3550
    :cond_f
    invoke-static {p2}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    .line 3551
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;

    invoke-direct {v0, p2, p3}, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;-><init>(D)V

    .line 3552
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 3551
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;Lcom/ibm/icu/text/UnicodeSet;)V

    return-object p0

    .line 3598
    :cond_10
    sget-object p3, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    .line 3600
    invoke-virtual {p3, v4, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v6

    if-ne v6, v5, :cond_18

    .line 3603
    invoke-virtual {p3, v1, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v6

    if-ne v6, v5, :cond_17

    .line 3605
    invoke-virtual {p3, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result p3

    if-ne p3, v5, :cond_11

    const/4 v1, -0x1

    goto :goto_2

    :cond_11
    move v1, p3

    :goto_2
    if-ltz v1, :cond_12

    if-ge v1, v0, :cond_12

    goto :goto_3

    :cond_12
    if-ne v1, v5, :cond_16

    const-string p3, "ANY"

    .line 3612
    invoke-static {p3, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_13

    const p1, 0x10ffff

    .line 3613
    invoke-virtual {p0, v3, p1}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;

    return-object p0

    :cond_13
    const-string p3, "ASCII"

    .line 3615
    invoke-static {p3, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_14

    const/16 p1, 0x7f

    .line 3616
    invoke-virtual {p0, v3, p1}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;

    return-object p0

    :cond_14
    const-string p3, "Assigned"

    .line 3618
    invoke-static {p3, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_15

    const/16 v1, 0x2000

    const/4 v3, 0x1

    goto :goto_3

    .line 3625
    :cond_15
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid property alias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 3630
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing property value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    move v2, v6

    goto :goto_3

    :cond_18
    move v2, v6

    const/16 v1, 0x2000

    .line 3636
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v3, :cond_19

    .line 3638
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    :cond_19
    return-object p0
.end method

.method public charAt(I)I
    .locals 5

    if-ltz p1, :cond_1

    .line 1146
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1148
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    add-int/lit8 v4, v3, 0x1

    .line 1149
    aget v2, v2, v3

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    add-int/2addr v1, p1

    return v1

    :cond_0
    sub-int/2addr p1, v2

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public clear()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 2319
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2320
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    const/high16 v2, 0x110000

    aput v2, v0, v1

    const/4 v0, 0x1

    .line 2321
    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v0, 0x0

    .line 2322
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 2323
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 512
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 4245
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public closeOver(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 12

    .line 3905
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_7

    .line 3907
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 3908
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 3909
    sget-object v2, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 3914
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3915
    iget-object v3, v1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->clear()V

    .line 3918
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v3

    .line 3920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    .line 3923
    invoke-virtual {p0, v6}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    .line 3924
    invoke-virtual {p0, v6}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v8

    if-eqz p1, :cond_1

    :goto_1
    if-gt v7, v8, :cond_2

    .line 3929
    invoke-virtual {v0, v7, v1}, Lcom/ibm/icu/impl/UCaseProps;->addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gt v7, v8, :cond_2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3935
    invoke-virtual {v0, v7, v9, v4, v10}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v11

    .line 3936
    invoke-static {v1, v11, v4}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3938
    invoke-virtual {v0, v7, v9, v4, v10}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v11

    .line 3939
    invoke-static {v1, v11, v4}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3941
    invoke-virtual {v0, v7, v9, v4, v10}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v9

    .line 3942
    invoke-static {v1, v9, v4}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3944
    invoke-virtual {v0, v7, v4, v5}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v9

    .line 3945
    invoke-static {v1, v9, v4}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3949
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    .line 3951
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3952
    invoke-static {v2, v5}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3953
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/UCaseProps;->addStringCaseClosure(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3954
    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_3

    .line 3958
    :cond_5
    invoke-static {v2}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    .line 3959
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3961
    invoke-static {v2, v3}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3962
    invoke-static {v2, v3, p1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3963
    invoke-static {v2, v3}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3964
    invoke-static {v3, v5}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_4

    .line 3968
    :cond_6
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    :cond_7
    return-object p0
.end method

.method public compact()Lcom/ibm/icu/text/UnicodeSet;
    .locals 4

    .line 2372
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2373
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2375
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    :cond_0
    const/4 v0, 0x0

    .line 2377
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    .line 2378
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    .line 2379
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-eq v0, v1, :cond_1

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2380
    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    :cond_1
    return-object p0
.end method

.method public compareTo(Lcom/ibm/icu/text/UnicodeSet;)I
    .locals 1

    .line 4549
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->compareTo(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 7

    .line 4557
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_3

    .line 4558
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v4

    sub-int/2addr v0, v4

    if-eqz v0, :cond_3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4560
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_3
    const/4 p2, 0x0

    .line 4565
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v4, v0, p2

    iget-object v5, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v6, v5, p2

    sub-int/2addr v4, v6

    const/high16 v6, 0x110000

    if-eqz v4, :cond_b

    .line 4567
    aget v0, v0, p2

    if-ne v0, v6, :cond_5

    .line 4568
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    .line 4569
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4570
    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget p1, p1, p2

    invoke-static {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1

    .line 4572
    :cond_5
    aget v0, v5, p2

    if-ne v0, v6, :cond_9

    .line 4573
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 4574
    :cond_6
    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4575
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget p2, v0, p2

    invoke-static {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result p1

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    if-gez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_9
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    neg-int v4, v4

    :goto_4
    return v4

    .line 4581
    :cond_b
    aget v0, v0, p2

    if-ne v0, v6, :cond_c

    .line 4585
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p1

    return p1

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public compareTo(Ljava/lang/Iterable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 4592
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 289
    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->compareTo(Lcom/ibm/icu/text/UnicodeSet;)I

    move-result p1

    return p1
.end method

.method public complement()Lcom/ibm/icu/text/UnicodeSet;
    .locals 4

    .line 1660
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1661
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1662
    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v2, v3

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1663
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    goto :goto_0

    .line 1665
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1666
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1667
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aput v1, v0, v1

    .line 1668
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    :goto_0
    const/4 v0, 0x0

    .line 1670
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0
.end method

.method public final complement(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1651
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public complement(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .line 1630
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    .line 1638
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->xor([III)Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    const/4 p1, 0x0

    .line 1640
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    .line 1635
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1632
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final complement(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1684
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1685
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1687
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1688
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1691
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addString(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x0

    .line 1693
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_1

    .line 1695
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;

    :goto_1
    return-object p0
.end method

.method public complementAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 2301
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2302
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->xor([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 2303
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v0, v1, :cond_0

    .line 2305
    new-instance v0, Ljava/util/TreeSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 2307
    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v0, v1, p1}, Lcom/ibm/icu/impl/SortedSetRelation;->doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final complementAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1440
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->complementAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public contains(I)Z
    .locals 4

    if-ltz p1, :cond_3

    const v0, 0x10ffff

    if-gt p1, v0, :cond_3

    .line 1711
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/BMPSet;->contains(I)Z

    move-result p1

    return p1

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_1

    .line 1715
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->contains(I)Z

    move-result p1

    return p1

    .line 1727
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1709
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const/4 p1, 0x6

    invoke-static {v2, v3, p1}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(II)Z
    .locals 5

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    .line 1907
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget p1, v0, p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1901
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1898
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final contains(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1920
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1924
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 13

    .line 1940
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 1945
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1946
    iget v3, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-eqz v5, :cond_2

    if-lt v6, v1, :cond_1

    if-eqz v7, :cond_0

    if-lt v8, v3, :cond_0

    goto :goto_1

    :cond_0
    return v4

    .line 1958
    :cond_1
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v9, v6, 0x1

    aget v6, v5, v6

    add-int/lit8 v11, v9, 0x1

    .line 1959
    aget v5, v5, v9

    move v9, v6

    move v6, v11

    move v11, v5

    :cond_2
    if-eqz v7, :cond_5

    if-lt v8, v3, :cond_4

    .line 1985
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    return v4

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v5, v8, 0x1

    .line 1966
    aget v10, v0, v8

    add-int/lit8 v8, v5, 0x1

    .line 1967
    aget v12, v0, v5

    :cond_5
    if-lt v10, v11, :cond_6

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    if-lt v10, v9, :cond_7

    if-gt v12, v11, :cond_7

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_0

    :cond_7
    return v4
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4454
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4455
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public containsAll(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2021
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2022
    invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 2023
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2024
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 2027
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 2021
    :cond_1
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public containsNone(II)Z
    .locals 5

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_3

    const v2, 0x10ffff

    if-gt p1, v2, :cond_3

    if-ltz p2, :cond_2

    if-gt p2, v2, :cond_2

    const/4 v0, -0x1

    .line 2094
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget v3, v1, v0

    if-ge p1, v3, :cond_0

    and-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_1

    .line 2096
    aget p1, v1, v0

    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2090
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2087
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public containsNone(Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 13

    .line 2111
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 2116
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2117
    iget v3, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-eqz v5, :cond_1

    if-lt v6, v1, :cond_0

    goto :goto_1

    .line 2126
    :cond_0
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v9, v6, 0x1

    aget v6, v5, v6

    add-int/lit8 v11, v9, 0x1

    .line 2127
    aget v5, v5, v9

    move v9, v6

    move v6, v11

    move v11, v5

    :cond_1
    if-eqz v7, :cond_4

    if-lt v8, v3, :cond_3

    .line 2153
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    const/4 v1, 0x5

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v0, v1, p1}, Lcom/ibm/icu/impl/SortedSetRelation;->hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z

    move-result p1

    if-nez p1, :cond_2

    return v4

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v5, v8, 0x1

    .line 2134
    aget v10, v0, v8

    add-int/lit8 v8, v5, 0x1

    .line 2135
    aget v12, v0, v5

    :cond_4
    if-lt v10, v11, :cond_5

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    if-lt v9, v12, :cond_6

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    return v4
.end method

.method public containsNone(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 2188
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsNone(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4467
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4468
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final containsSome(II)Z
    .locals 0

    .line 2200
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final containsSome(Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 0

    .line 2211
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final containsSome(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 2222
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final containsSome(Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4480
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(Ljava/lang/Iterable;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 2405
    :cond_1
    :try_start_0
    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    .line 2406
    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    iget v3, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x0

    .line 2407
    :goto_0
    iget v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-ge v2, v3, :cond_4

    .line 2408
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2410
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v1

    :catch_0
    return v0
.end method

.method public findIn(Ljava/lang/CharSequence;IZ)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4754
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 4755
    invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4756
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eq v1, p3, :cond_0

    goto :goto_1

    .line 4754
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public findLastIn(Ljava/lang/CharSequence;IZ)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    add-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_1

    .line 4777
    invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4778
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eq v2, p3, :cond_0

    goto :goto_1

    .line 4776
    :cond_0
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, p2

    :goto_2
    return v0
.end method

.method public freeze()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 4052
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4053
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 4056
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4057
    new-instance v0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v2, 0x7f

    invoke-direct {v0, p0, v1, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    .line 4059
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4066
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/BMPSet;

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/BMPSet;-><init>([II)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    :cond_2
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public getRangeCount()I
    .locals 1

    .line 2337
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRangeEnd(I)I
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getRangeStart(I)I
    .locals 1

    .line 2350
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public getRegexEquivalent()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2065
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2066
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2068
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2069
    invoke-direct {p0, v0, v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    .line 2070
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x7c

    .line 2071
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2072
    invoke-static {v0, v3, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasStrings()Z
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 2426
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v1, 0x0

    .line 2427
    :goto_0
    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-ge v1, v2, :cond_0

    const v2, 0xf4243

    mul-int v0, v0, v2

    .line 2429
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 5

    if-ltz p1, :cond_2

    const v0, 0x10ffff

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1120
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 1124
    aget v2, v2, v3

    if-ge p1, v2, :cond_1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    return v1

    :cond_1
    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    move v0, v4

    goto :goto_0

    .line 1115
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const/4 p1, 0x6

    invoke-static {v2, v3, p1}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .line 860
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFrozen()Z
    .locals 1

    .line 4041
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_0

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

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4366
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
    .locals 10

    const/4 v0, 0x0

    .line 916
    aget v1, p2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, p3, :cond_2

    const p1, 0xffff

    .line 917
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v0

    .line 923
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 932
    aget v1, p2, v0

    if-ge v1, p3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 937
    :goto_0
    aget v4, p2, v0

    invoke-interface {p1, v4}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v4

    .line 943
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 944
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    const/4 v8, 0x0

    goto :goto_2

    .line 948
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v1, :cond_7

    if-le v8, v4, :cond_7

    goto :goto_4

    :cond_7
    if-eq v8, v4, :cond_8

    goto :goto_1

    .line 955
    :cond_8
    aget v8, p2, v0

    invoke-static {p1, v8, p3, v7}, Lcom/ibm/icu/text/UnicodeSet;->matchRest(Lcom/ibm/icu/text/Replaceable;IILjava/lang/String;)I

    move-result v8

    if-eqz p4, :cond_a

    if-eqz v1, :cond_9

    .line 958
    aget v9, p2, v0

    sub-int v9, p3, v9

    goto :goto_3

    :cond_9
    aget v9, p2, v0

    sub-int/2addr v9, p3

    :goto_3
    if-ne v8, v9, :cond_a

    return v3

    .line 965
    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v8, v7, :cond_4

    if-le v8, v6, :cond_b

    move v6, v8

    :cond_b
    if-eqz v1, :cond_4

    if-ge v8, v6, :cond_4

    :cond_c
    :goto_4
    if-eqz v6, :cond_e

    .line 982
    aget p1, p2, v0

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    neg-int v6, v6

    :goto_5
    add-int/2addr p1, v6

    aput p1, p2, v0

    return v2

    .line 986
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeFilter;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I

    move-result p1

    return p1
.end method

.method public matchesAt(Ljava/lang/CharSequence;I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 1041
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    .line 1044
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1045
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    .line 1047
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v0, :cond_1

    goto :goto_0

    :cond_1
    if-le v4, v0, :cond_0

    goto :goto_2

    .line 1054
    :cond_2
    :goto_1
    invoke-static {p1, p2, v2}, Lcom/ibm/icu/text/UnicodeSet;->matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I

    move-result v0

    if-le v1, v0, :cond_3

    goto :goto_2

    .line 1057
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    .line 1058
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move v1, v0

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v0, 0x2

    if-ge v1, v0, :cond_6

    .line 1063
    invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 1064
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    :cond_6
    add-int/2addr p2, v1

    return p2
.end method

.method public matchesIndexValue(I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 880
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 881
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v2

    .line 882
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    and-int/lit16 v5, v2, -0x100

    and-int/lit16 v6, v4, -0x100

    if-ne v5, v6, :cond_0

    and-int/lit16 v2, v2, 0xff

    if-gt v2, p1, :cond_1

    and-int/lit16 v2, v4, 0xff

    if-gt p1, v2, :cond_1

    return v3

    :cond_0
    and-int/lit16 v2, v2, 0xff

    if-le v2, p1, :cond_2

    and-int/lit16 v2, v4, 0xff

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 892
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 893
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 896
    :cond_5
    invoke-static {v2, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, p1, :cond_4

    return v3

    :cond_6
    return v0
.end method

.method public ranges()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/ibm/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    .line 4322
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$1;)V

    return-object v0
.end method

.method public final remove(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1593
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public remove(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .line 1571
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    .line 1579
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, p2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    return-object p0

    .line 1576
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1573
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final remove(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1605
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1607
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1608
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1609
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1611
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_0

    .line 1614
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 2283
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2284
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 2285
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public final removeAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1451
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Iterable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/ibm/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4502
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 4503
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4504
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->remove(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final removeAllStrings()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1460
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1461
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    const/4 v0, 0x0

    .line 1463
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final retain(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1525
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/UnicodeSet;->retain(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public retain(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .line 1501
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    .line 1509
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 1511
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    :goto_0
    return-object p0

    .line 1506
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1503
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final retain(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 1537
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_2

    .line 1539
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1540
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1541
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object p0

    .line 1547
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_1

    .line 1549
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addString(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    .line 1551
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_0

    .line 1553
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->retain(II)Lcom/ibm/icu/text/UnicodeSet;

    :goto_0
    return-object p0
.end method

.method public retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 2260
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2261
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 2262
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2263
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2264
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->clear()V

    goto :goto_0

    .line 2266
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final retainAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 1429
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public retainAll(Ljava/lang/Iterable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/ibm/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4514
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 4516
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 4517
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Lcom/ibm/icu/text/UnicodeSet;

    .line 4518
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public set(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 525
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .line 537
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 538
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 539
    iget v0, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 540
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 541
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Ljava/util/TreeSet;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    goto :goto_0

    .line 544
    :cond_0
    sget-object p1, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    :goto_0
    return-object p0
.end method

.method public size()I
    .locals 5

    .line 846
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 848
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 5

    .line 4096
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-lt p2, v0, :cond_1

    return v0

    .line 4102
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4104
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ibm/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 4106
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    .line 4107
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1

    .line 4108
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4109
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_4

    const/16 v0, 0x21

    goto :goto_1

    :cond_4
    const/16 v0, 0x22

    .line 4111
    :goto_1
    new-instance v2, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4112
    invoke-virtual {v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4113
    invoke-virtual {v2, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1

    .line 4117
    :cond_5
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/ibm/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1
.end method

.method public span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1

    const/4 v0, 0x0

    .line 4081
    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_6

    .line 4133
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-lt p2, v0, :cond_1

    return v0

    .line 4139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_2

    .line 4142
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 4143
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-eqz v0, :cond_3

    .line 4144
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 4145
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4146
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_4

    const/16 v0, 0x21

    goto :goto_1

    :cond_4
    const/16 v0, 0x22

    :goto_1
    or-int/lit8 v0, v0, 0x40

    .line 4149
    new-instance v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4150
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 4153
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 4131
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outCount must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 5

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 4204
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 4205
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 4207
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-eqz v1, :cond_2

    .line 4209
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/BMPSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1

    .line 4211
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v1, :cond_3

    .line 4212
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1

    .line 4213
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4214
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v1, :cond_4

    const/16 v1, 0x11

    goto :goto_0

    :cond_4
    const/16 v1, 0x12

    .line 4217
    :goto_0
    new-instance v2, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4218
    invoke-virtual {v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4219
    invoke-virtual {v2, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1

    .line 4224
    :cond_5
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v1, :cond_6

    const/4 v0, 0x1

    .line 4229
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p3

    .line 4230
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eq v0, v1, :cond_7

    goto :goto_1

    .line 4233
    :cond_7
    invoke-static {p3}, Ljava/lang/Character;->charCount(I)I

    move-result p3

    sub-int/2addr p2, p3

    if-gtz p2, :cond_6

    :goto_1
    return p2
.end method

.method public spanBack(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1

    .line 4186
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1
.end method

.method public strings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4706
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4707
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0

    .line 4709
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    return-object v0
.end method

.method public stripFrom(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 4796
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    xor-int/lit8 v2, p2, 0x1

    .line 4797
    invoke-virtual {p0, p1, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 4798
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4799
    invoke-virtual {p0, p1, v2, p2}, Lcom/ibm/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v1

    goto :goto_0

    .line 4801
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2440
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
