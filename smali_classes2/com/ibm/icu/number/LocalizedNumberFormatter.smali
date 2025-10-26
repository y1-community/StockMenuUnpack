.class public Lcom/ibm/icu/number/LocalizedNumberFormatter;
.super Lcom/ibm/icu/number/NumberFormatterSettings;
.source "LocalizedNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/number/NumberFormatterSettings<",
        "Lcom/ibm/icu/number/LocalizedNumberFormatter;",
        ">;"
    }
.end annotation


# static fields
.field static final callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lcom/ibm/icu/number/LocalizedNumberFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile callCountInternal:J

.field volatile compiled:Lcom/ibm/icu/number/NumberFormatterImpl;

.field volatile savedWithUnit:Lcom/ibm/icu/number/LocalizedNumberFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const-string v1, "callCountInternal"

    .line 34
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;->callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/number/NumberFormatterSettings;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method

.method private computeCompiled()Z
    .locals 7

    .line 205
    invoke-virtual {p0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/ibm/icu/number/LocalizedNumberFormatter;->callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v1

    .line 210
    iget-object v3, v0, Lcom/ibm/icu/impl/number/MacroProps;->threshold:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    .line 211
    new-instance v1, Lcom/ibm/icu/number/NumberFormatterImpl;

    invoke-direct {v1, v0}, Lcom/ibm/icu/number/NumberFormatterImpl;-><init>(Lcom/ibm/icu/impl/number/MacroProps;)V

    iput-object v1, p0, Lcom/ibm/icu/number/LocalizedNumberFormatter;->compiled:Lcom/ibm/icu/number/NumberFormatterImpl;

    return v5

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/number/LocalizedNumberFormatter;->compiled:Lcom/ibm/icu/number/NumberFormatterImpl;

    if-eqz v0, :cond_1

    return v5

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private format(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/number/FormattedNumber;
    .locals 4

    .line 128
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/ibm/icu/number/FormattedNumber;

    iget-object v3, v1, Lcom/ibm/icu/impl/number/MicroProps;->outputUnit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object v1, v1, Lcom/ibm/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    invoke-direct {v2, v0, p1, v3, v1}, Lcom/ibm/icu/number/FormattedNumber;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/util/MeasureUnit;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method create(ILjava/lang/Object;)Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 222
    new-instance v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    return-object p1
.end method

.method public format(D)Lcom/ibm/icu/number/FormattedNumber;
    .locals 1

    .line 69
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    invoke-direct {p0, v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    return-object p1
.end method

.method public format(J)Lcom/ibm/icu/number/FormattedNumber;
    .locals 1

    .line 55
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/number/FormattedNumber;
    .locals 4

    .line 101
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 102
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    .line 103
    new-instance v1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 104
    invoke-virtual {p0, v0, p1, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p1

    .line 105
    new-instance v2, Lcom/ibm/icu/number/FormattedNumber;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MicroProps;->outputUnit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object p1, p1, Lcom/ibm/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    invoke-direct {v2, v1, v0, v3, p1}, Lcom/ibm/icu/number/FormattedNumber;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/util/MeasureUnit;Ljava/lang/String;)V

    return-object v2
.end method

.method public format(Ljava/lang/Number;)Lcom/ibm/icu/number/FormattedNumber;
    .locals 1

    .line 83
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    return-object p1
.end method

.method public formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->computeCompiled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/ibm/icu/number/LocalizedNumberFormatter;->compiled:Lcom/ibm/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/number/NumberFormatterImpl;->format(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ibm/icu/number/NumberFormatterImpl;->formatStatic(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p1

    return-object p1
.end method

.method public formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {v0, p2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/number/LocalizedNumberFormatter;->savedWithUnit:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v1

    iget-object v1, v1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {v1, p2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    :cond_1
    new-instance v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    .line 175
    iput-object v0, p0, Lcom/ibm/icu/number/LocalizedNumberFormatter;->savedWithUnit:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    .line 177
    :cond_2
    invoke-virtual {v0, p1, p3}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p1

    return-object p1
.end method

.method public getAffixImpl(ZZ)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    int-to-byte p2, p2

    .line 190
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    .line 192
    invoke-direct {p0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->computeCompiled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/ibm/icu/number/LocalizedNumberFormatter;->compiled:Lcom/ibm/icu/number/NumberFormatterImpl;

    invoke-virtual {v2, p2, v1, v0}, Lcom/ibm/icu/number/NumberFormatterImpl;->getPrefixSuffix(BLcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/FormattedStringBuilder;)I

    move-result p2

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v2

    invoke-static {v2, p2, v1, v0}, Lcom/ibm/icu/number/NumberFormatterImpl;->getPrefixSuffixStatic(Lcom/ibm/icu/impl/number/MacroProps;BLcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/FormattedStringBuilder;)I

    move-result p2

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toFormat()Ljava/text/Format;
    .locals 2

    .line 121
    new-instance v0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v1

    iget-object v1, v1, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;-><init>(Lcom/ibm/icu/number/LocalizedNumberFormatter;Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method
