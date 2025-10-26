.class Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormattedListBuilder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field needsFields:Z

.field private string:Lcom/ibm/icu/impl/FormattedStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 592
    const-class v0, Lcom/ibm/icu/text/ListFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    .line 600
    iput-boolean p2, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->needsFields:Z

    .line 601
    sget-object p2, Lcom/ibm/icu/text/ListFormatter$Field;->LITERAL:Lcom/ibm/icu/text/ListFormatter$Field;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->setAppendableField(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->appendElement(Ljava/lang/Object;I)V

    return-void
.end method

.method private appendElement(Ljava/lang/Object;I)V
    .locals 2

    .line 629
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 630
    iget-boolean v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->needsFields:Z

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;-><init>()V

    .line 632
    sget-object v1, Lcom/ibm/icu/text/ListFormatter$SpanField;->LIST_SPAN:Lcom/ibm/icu/text/ListFormatter$SpanField;

    iput-object v1, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Lcom/ibm/icu/text/UFormat$SpanField;

    .line 633
    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    iput-object v1, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    .line 634
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 635
    iput p2, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    .line 636
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    .line 637
    iget-object p2, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    goto :goto_0

    .line 639
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/Object;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;
    .locals 5

    .line 611
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->setAppendIndex(I)V

    const-wide/16 v0, 0x0

    .line 614
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-static {v0, v1, p1, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;->step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-object p0

    .line 618
    :cond_0
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;->getArgIndex(J)I

    move-result v2

    if-nez v2, :cond_1

    .line 620
    iget-object v2, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->setAppendIndex(I)V

    goto :goto_0

    .line 622
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->appendElement(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public appendTo(Ljava/lang/Appendable;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-void
.end method

.method public getOffset(I)I
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->findSpan(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toValue()Lcom/ibm/icu/text/ListFormatter$FormattedList;
    .locals 2

    .line 657
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$FormattedList;

    iget-object v1, p0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedList;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;)V

    return-object v0
.end method
