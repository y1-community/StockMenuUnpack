.class public Lcom/ibm/icu/text/ConstrainedFieldPosition;
.super Ljava/lang/Object;
.source "ConstrainedFieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fClassConstraint:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private fConstraint:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

.field private fContext:J

.field private fField:Ljava/text/Format$Field;

.field private fLimit:I

.field private fStart:I

.field private fValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->reset()V

    return-void
.end method


# virtual methods
.method public constrainClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 165
    sget-object v0, Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;->CLASS:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fConstraint:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 166
    iput-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 168
    iput-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot constrain on null field class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constrainField(Ljava/text/Format$Field;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    sget-object v0, Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;->FIELD:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fConstraint:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 134
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    .line 135
    iput-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    return-void

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot constrain on null field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constrainFieldAndValue(Ljava/text/Format$Field;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    sget-object v0, Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;->VALUE:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fConstraint:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 197
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    .line 198
    iput-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 199
    iput-object p2, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    return-void
.end method

.method public getField()Ljava/text/Format$Field;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    return-object v0
.end method

.method public getFieldValue()Ljava/lang/Object;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getInt64IterationContext()J
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fContext:J

    return-wide v0
.end method

.method public getLimit()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fLimit:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fStart:I

    return v0
.end method

.method public matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_6

    .line 323
    sget-object v0, Lcom/ibm/icu/text/ConstrainedFieldPosition$1;->$SwitchMap$com$ibm$icu$text$ConstrainedFieldPosition$ConstraintType:[I

    iget-object v1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fConstraint:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 332
    iget-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 334
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 329
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 327
    :cond_4
    iget-object p2, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_5
    return v1

    .line 321
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    .line 95
    sget-object v0, Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;->NONE:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fConstraint:Lcom/ibm/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 96
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 98
    iput-object v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fStart:I

    .line 100
    iput v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fLimit:I

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fContext:J

    return-void
.end method

.method public setInt64IterationContext(J)V
    .locals 0

    .line 275
    iput-wide p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fContext:J

    return-void
.end method

.method public setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 303
    iput-object p2, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    .line 304
    iput p3, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fStart:I

    .line 305
    iput p4, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fLimit:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFPos["

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget v1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    iget v1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lcom/ibm/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
