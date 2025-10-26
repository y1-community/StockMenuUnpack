.class public abstract Lcom/ibm/icu/text/IDNA;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/IDNA$Error;,
        Lcom/ibm/icu/text/IDNA$Info;
    }
.end annotation


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_BIDI:I = 0x4

.field public static final CHECK_CONTEXTJ:I = 0x8

.field public static final CHECK_CONTEXTO:I = 0x40

.field public static final DEFAULT:I = 0x0

.field public static final NONTRANSITIONAL_TO_ASCII:I = 0x10

.field public static final NONTRANSITIONAL_TO_UNICODE:I = 0x20

.field public static final USE_STD3_RULES:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$100(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$200(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static compare(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/UCharacterIterator;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 961
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the source buffers is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 928
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 926
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the source buffers is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 893
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 891
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the source buffers is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertIDNToASCII(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToUnicode(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 857
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/IDNA2003;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToASCII(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/IDNA2003;->convertToASCII(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    invoke-static {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p0

    .line 502
    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertToASCII(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    invoke-static {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p0

    .line 533
    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertToASCII(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToUnicode(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/IDNA2003;->convertToUnicode(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    invoke-static {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p0

    .line 700
    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertToUnicode(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    invoke-static {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p0

    .line 731
    invoke-static {p0, p1}, Lcom/ibm/icu/text/IDNA;->convertToUnicode(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getUTS46Instance(I)Lcom/ibm/icu/text/IDNA;
    .locals 1

    .line 153
    new-instance v0, Lcom/ibm/icu/impl/UTS46;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/UTS46;-><init>(I)V

    return-object v0
.end method

.method protected static hasCertainErrors(Lcom/ibm/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$100(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$100(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static hasCertainLabelErrors(Lcom/ibm/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$200(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$200(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static isBiDi(Lcom/ibm/icu/text/IDNA$Info;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$400(Lcom/ibm/icu/text/IDNA$Info;)Z

    move-result p0

    return p0
.end method

.method protected static isOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$500(Lcom/ibm/icu/text/IDNA$Info;)Z

    move-result p0

    return p0
.end method

.method protected static promoteAndResetLabelErrors(Lcom/ibm/icu/text/IDNA$Info;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$200(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$100(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$200(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 313
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$200(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/EnumSet;->clear()V

    :cond_0
    return-void
.end method

.method protected static resetInfo(Lcom/ibm/icu/text/IDNA$Info;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    invoke-static {p0}, Lcom/ibm/icu/text/IDNA$Info;->access$000(Lcom/ibm/icu/text/IDNA$Info;)V

    return-void
.end method

.method protected static setBiDi(Lcom/ibm/icu/text/IDNA$Info;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 338
    invoke-static {p0, v0}, Lcom/ibm/icu/text/IDNA$Info;->access$402(Lcom/ibm/icu/text/IDNA$Info;Z)Z

    return-void
.end method

.method protected static setNotOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 354
    invoke-static {p0, v0}, Lcom/ibm/icu/text/IDNA$Info;->access$502(Lcom/ibm/icu/text/IDNA$Info;Z)Z

    return-void
.end method

.method protected static setTransitionalDifferent(Lcom/ibm/icu/text/IDNA$Info;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 330
    invoke-static {p0, v0}, Lcom/ibm/icu/text/IDNA$Info;->access$302(Lcom/ibm/icu/text/IDNA$Info;Z)Z

    return-void
.end method


# virtual methods
.method public abstract labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method
