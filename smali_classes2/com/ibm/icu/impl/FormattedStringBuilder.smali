.class public Lcom/ibm/icu/impl/FormattedStringBuilder;
.super Ljava/lang/Object;
.source "FormattedStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/FormattedStringBuilder$FieldWrapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:Lcom/ibm/icu/impl/FormattedStringBuilder;

.field private static final fieldToDebugChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appendOffset:I

.field appendableField:Ljava/lang/Object;

.field chars:[C

.field fields:[Ljava/lang/Object;

.field length:I

.field zero:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/FormattedStringBuilder;->EMPTY:Lcom/ibm/icu/impl/FormattedStringBuilder;

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    .line 447
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->MEASURE_UNIT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->COMPACT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x28

    .line 59
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    .line 63
    new-array v1, p1, [C

    iput-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    .line 64
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 65
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    .line 66
    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->copyFrom(Lcom/ibm/icu/impl/FormattedStringBuilder;)V

    return-void
.end method

.method private getCapacity()I
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method private prepareForInsert(II)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 322
    iget p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    :cond_0
    if-nez p1, :cond_1

    .line 324
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v1, v0, p2

    if-ltz v1, :cond_1

    sub-int/2addr v0, p2

    .line 326
    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    .line 327
    iget p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    return v0

    .line 329
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    if-ne p1, v0, :cond_2

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    invoke-direct {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->getCapacity()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 331
    iget p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    .line 332
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0

    .line 335
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->prepareForInsertHelper(II)I

    move-result p1

    return p1
.end method

.method private prepareForInsertHelper(II)I
    .locals 9

    .line 342
    invoke-direct {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->getCapacity()I

    move-result v0

    .line 343
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    .line 344
    iget-object v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    .line 345
    iget-object v3, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 346
    iget v4, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int v5, v4, p2

    if-le v5, v0, :cond_0

    add-int v0, v4, p2

    mul-int/lit8 v0, v0, 0x2

    .line 348
    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    .line 350
    new-array v4, v0, [C

    .line 351
    new-array v0, v0, [Ljava/lang/Object;

    .line 355
    invoke-static {v2, v1, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v1, p1

    add-int v7, v5, p1

    add-int/2addr v7, p2

    .line 356
    iget v8, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v8, p1

    invoke-static {v2, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    invoke-static {v3, v1, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v1, p1

    invoke-static {v3, v6, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iput-object v4, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    .line 369
    iput-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 370
    iput v5, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    .line 371
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    goto :goto_0

    .line 373
    :cond_0
    div-int/lit8 v0, v0, 0x2

    add-int v5, v4, p2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    .line 377
    invoke-static {v2, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v0, p1

    add-int v5, v4, p2

    .line 378
    iget v6, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    invoke-static {v3, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v1, p1

    invoke-static {v3, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    .line 391
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    .line 393
    :goto_0
    iget p2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr p2, p1

    return p2
.end method

.method private remove(II)I
    .locals 4

    .line 401
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v0, p1

    .line 402
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v2, v0, p2

    iget v3, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget v3, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    return v0
.end method

.method public static unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    instance-of v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder$FieldWrapper;

    if-eqz v0, :cond_1

    .line 36
    check-cast p0, Lcom/ibm/icu/impl/FormattedStringBuilder$FieldWrapper;

    invoke-interface {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder$FieldWrapper;->unwrap()Ljava/text/Format$Field;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    instance-of v0, p0, Ljava/text/Format$Field;

    if-eqz v0, :cond_2

    .line 38
    check-cast p0, Ljava/text/Format$Field;

    return-object p0

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public append(Lcom/ibm/icu/impl/FormattedStringBuilder;)I
    .locals 2

    .line 286
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILcom/ibm/icu/impl/FormattedStringBuilder;)I

    move-result p1

    return p1
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;)I
    .locals 2

    .line 181
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public append([C[Ljava/lang/Object;)I
    .locals 2

    .line 258
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(I[C[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public append(C)Ljava/lang/Appendable;
    .locals 2

    .line 537
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertChar16(ICLjava/lang/Object;)I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2

    .line 515
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 8

    .line 526
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int v3, v0, v1

    iget-object v7, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    return-object p0
.end method

.method public appendChar16(CLjava/lang/Object;)I
    .locals 2

    .line 140
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertChar16(ICLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public appendCodePoint(ILjava/lang/Object;)I
    .locals 2

    .line 157
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public charAt(I)C
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1
.end method

.method public clear()Lcom/ibm/icu/impl/FormattedStringBuilder;
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->getCapacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    return-object p0
.end method

.method public codePointAt(I)I
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v1, v2

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result p1

    return p1
.end method

.method public codePointBefore(I)I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr p1, v1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result p1

    return p1
.end method

.method public codePointCount()I
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public contentEquals(Lcom/ibm/icu/impl/FormattedStringBuilder;)Z
    .locals 4

    .line 569
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p1, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    if-ge v0, v1, :cond_3

    .line 572
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 575
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public contentEquals([C[Ljava/lang/Object;)Z
    .locals 5

    .line 548
    array-length v0, p1

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 550
    :cond_0
    array-length v0, p2

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 552
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    if-ge v0, v1, :cond_4

    .line 553
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v3, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int v4, v3, v0

    aget-char v1, v1, v4

    aget-char v4, p1, v0

    if-eq v1, v4, :cond_2

    return v2

    .line 556
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/2addr v3, v0

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public copyFrom(Lcom/ibm/icu/impl/FormattedStringBuilder;)V
    .locals 2

    .line 74
    iget-object v0, p1, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    .line 75
    iget-object v0, p1, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 76
    iget v0, p1, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    .line 77
    iget p1, p1, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iput p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 589
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Don\'t call #hashCode() or #equals() on a mutable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fieldAt(I)Ljava/lang/Object;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public getFirstCodePoint()I
    .locals 3

    .line 103
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public getLastCodePoint()I
    .locals 3

    .line 110
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v0, v2

    invoke-static {v1, v0, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Don\'t call #hashCode() or #equals() on a mutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(ILcom/ibm/icu/impl/FormattedStringBuilder;)I
    .locals 5

    if-eq p0, p2, :cond_2

    .line 298
    iget v0, p2, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 303
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 305
    iget-object v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v3, p1, v1

    invoke-virtual {p2, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 306
    iget-object v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 296
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot call insert/append on myself"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I
    .locals 4

    sub-int/2addr p4, p3

    .line 210
    invoke-direct {p0, p1, p4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 212
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v2, p1, v0

    add-int v3, p3, v0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 213
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object p5, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p4
.end method

.method public insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I
    .locals 6

    .line 190
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 196
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    const/4 v3, 0x0

    .line 198
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public insert(I[C[Ljava/lang/Object;)I
    .locals 5

    .line 269
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 272
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result p1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 274
    iget-object v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v3, p1, v1

    aget-char v4, p2, v1

    aput-char v4, v2, v3

    .line 275
    iget-object v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    if-nez p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    aget-object v4, p3, v1

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public insertChar16(ICLjava/lang/Object;)I
    .locals 2

    const/4 v0, 0x1

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result p1

    .line 146
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    aput-char p2, v1, p1

    .line 147
    iget-object p2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object p3, p2, p1

    return v0
.end method

.method public insertCodePoint(IILjava/lang/Object;)I
    .locals 2

    .line 166
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result p1

    .line 168
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    invoke-static {p2, v1, p1}, Ljava/lang/Character;->toChars(I[CI)I

    .line 169
    iget-object p2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object p3, p2, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 171
    aput-object p3, p2, p1

    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    return v0
.end method

.method public setAppendIndex(I)V
    .locals 1

    .line 136
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendOffset:I

    return-void
.end method

.method public setAppendableField(Ljava/lang/Object;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    return-void
.end method

.method public splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I
    .locals 4

    sub-int/2addr p2, p1

    sub-int/2addr p5, p4

    sub-int p2, p5, p2

    if-lez p2, :cond_0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result p1

    goto :goto_0

    :cond_0
    neg-int v0, p2

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->remove(II)I

    move-result p1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_1

    .line 245
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v2, p1, v0

    add-int v3, p4, v0

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 246
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object p6, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;)V

    .line 420
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr p2, p1

    .line 421
    iput p2, v0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    return-object v0
.end method

.method public subString(II)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_0

    .line 427
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-lt p2, p1, :cond_0

    .line 430
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 428
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toCharArray()[C
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<FormattedStringBuilder ["

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    const/16 v2, 0x6e

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 479
    :cond_0
    sget-object v3, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v2, 0x3f

    .line 482
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "]>"

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toFieldArray()[Ljava/lang/Object;
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 441
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
