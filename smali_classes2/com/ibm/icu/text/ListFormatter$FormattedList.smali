.class public final Lcom/ibm/icu/text/ListFormatter$FormattedList;
.super Ljava/lang/Object;
.source "ListFormatter.java"

# interfaces
.implements Lcom/ibm/icu/text/FormattedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormattedList"
.end annotation


# instance fields
.field private final string:Lcom/ibm/icu/impl/FormattedStringBuilder;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

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

    .line 247
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public nextPosition(Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result p1

    return p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->toCharacterIterator(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedList;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
