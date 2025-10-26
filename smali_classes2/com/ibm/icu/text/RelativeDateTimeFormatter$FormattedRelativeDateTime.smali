.class public Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"

# interfaces
.implements Lcom/ibm/icu/text/FormattedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormattedRelativeDateTime"
.end annotation


# instance fields
.field private final string:Lcom/ibm/icu/impl/FormattedStringBuilder;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;)V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;)V
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;)V

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

    .line 521
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public nextPosition(Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->NUMERIC:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result p1

    return p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->NUMERIC:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->toCharacterIterator(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
