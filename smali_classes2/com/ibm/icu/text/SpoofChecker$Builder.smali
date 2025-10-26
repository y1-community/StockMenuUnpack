.class public Lcom/ibm/icu/text/SpoofChecker$Builder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
    }
.end annotation


# instance fields
.field final fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

.field final fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field fChecks:I

.field private fRestrictionLevel:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

.field fSpoofData:Lcom/ibm/icu/text/SpoofChecker$SpoofData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 508
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    const/4 v0, -0x1

    .line 519
    iput v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fSpoofData:Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    .line 521
    sget-object v0, Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/SpoofChecker;)V
    .locals 3

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 508
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    .line 532
    invoke-static {p1}, Lcom/ibm/icu/text/SpoofChecker;->access$000(Lcom/ibm/icu/text/SpoofChecker;)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 533
    invoke-static {p1}, Lcom/ibm/icu/text/SpoofChecker;->access$100(Lcom/ibm/icu/text/SpoofChecker;)Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    move-result-object v2

    iput-object v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fSpoofData:Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    .line 537
    invoke-static {p1}, Lcom/ibm/icu/text/SpoofChecker;->access$200(Lcom/ibm/icu/text/SpoofChecker;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 538
    invoke-static {p1}, Lcom/ibm/icu/text/SpoofChecker;->access$300(Lcom/ibm/icu/text/SpoofChecker;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 539
    invoke-static {p1}, Lcom/ibm/icu/text/SpoofChecker;->access$400(Lcom/ibm/icu/text/SpoofChecker;)Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method private addScriptChars(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 4

    .line 750
    invoke-static {p1}, Lcom/ibm/icu/lang/UScript;->getCode(Lcom/ibm/icu/util/ULocale;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 752
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v1, 0x0

    .line 753
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x100a

    .line 754
    aget v3, p1, v1

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 755
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/ibm/icu/text/SpoofChecker;
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fSpoofData:Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->getDefault()Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fSpoofData:Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    .line 564
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/SpoofChecker;-><init>(Lcom/ibm/icu/text/SpoofChecker$1;)V

    .line 565
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    invoke-static {v0, v1}, Lcom/ibm/icu/text/SpoofChecker;->access$002(Lcom/ibm/icu/text/SpoofChecker;I)I

    .line 566
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fSpoofData:Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/SpoofChecker;->access$102(Lcom/ibm/icu/text/SpoofChecker;Lcom/ibm/icu/text/SpoofChecker$SpoofData;)Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    .line 567
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/UnicodeSet;

    move-object v2, v1

    check-cast v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/SpoofChecker;->access$202(Lcom/ibm/icu/text/SpoofChecker;Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 568
    invoke-static {v0}, Lcom/ibm/icu/text/SpoofChecker;->access$200(Lcom/ibm/icu/text/SpoofChecker;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 569
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/ibm/icu/text/SpoofChecker;->access$302(Lcom/ibm/icu/text/SpoofChecker;Ljava/util/Set;)Ljava/util/Set;

    .line 570
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/SpoofChecker;->access$402(Lcom/ibm/icu/text/SpoofChecker;Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;)Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method

.method public setAllowedChars(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/SpoofChecker$Builder;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 779
    iget-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 780
    iget p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method

.method public setAllowedJavaLocales(Ljava/util/Set;)Lcom/ibm/icu/text/SpoofChecker$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;)",
            "Lcom/ibm/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 740
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 741
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SpoofChecker$Builder;->setAllowedLocales(Ljava/util/Set;)Lcom/ibm/icu/text/SpoofChecker$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAllowedLocales(Ljava/util/Set;)Lcom/ibm/icu/text/SpoofChecker$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)",
            "Lcom/ibm/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 696
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    .line 699
    iget-object v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/text/SpoofChecker$Builder;->addScriptChars(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 705
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 706
    iget-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0x10ffff

    invoke-virtual {p1, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 707
    iget p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0

    .line 713
    :cond_1
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/16 v2, 0x100a

    .line 714
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 715
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x1

    .line 716
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 717
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 720
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 721
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 722
    iget p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method

.method public setChecks(I)Lcom/ibm/icu/text/SpoofChecker$Builder;
    .locals 1

    and-int/lit8 v0, p1, 0x0

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, -0x1

    .line 661
    iput p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0

    .line 659
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad Spoof Checks value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(Ljava/io/Reader;)Lcom/ibm/icu/text/SpoofChecker$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;-><init>(Lcom/ibm/icu/text/SpoofChecker$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fSpoofData:Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    .line 594
    invoke-static {p1, v0}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->buildConfusableData(Ljava/io/Reader;Lcom/ibm/icu/text/SpoofChecker$SpoofData;)V

    return-object p0
.end method

.method public setData(Ljava/io/Reader;Ljava/io/Reader;)Lcom/ibm/icu/text/SpoofChecker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SpoofChecker$Builder;->setData(Ljava/io/Reader;)Lcom/ibm/icu/text/SpoofChecker$Builder;

    return-object p0
.end method

.method public setRestrictionLevel(Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;)Lcom/ibm/icu/text/SpoofChecker$Builder;
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    .line 797
    iget p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit16 p1, p1, 0x90

    iput p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method
