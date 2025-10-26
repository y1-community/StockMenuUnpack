.class public final Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"

# interfaces
.implements Lcom/ibm/icu/text/FormattedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormattedDateInterval"
.end annotation


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    .line 287
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->attributes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextPosition(Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;->nextPosition(Ljava/util/List;Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z

    move-result p1

    return p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->attributes:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;->toCharacterIterator(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;->string:Ljava/lang/String;

    return-object v0
.end method
