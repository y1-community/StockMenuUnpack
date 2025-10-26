.class public Lcom/ibm/icu/util/CodePointMap$StringIterator;
.super Ljava/lang/Object;
.source "CodePointMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringIterator"
.end annotation


# instance fields
.field protected c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected s:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected sIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final synthetic this$0:Lcom/ibm/icu/util/CodePointMap;

.field protected value:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/ibm/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->this$0:Lcom/ibm/icu/util/CodePointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    .line 224
    iput p3, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    const/4 p1, -0x1

    .line 225
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->c:I

    const/4 p1, 0x0

    .line 226
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->value:I

    return-void
.end method


# virtual methods
.method public final getCodePoint()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->c:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->value:I

    return v0
.end method

.method public next()Z
    .locals 2

    .line 253
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->c:I

    .line 257
    iget v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->this$0:Lcom/ibm/icu/util/CodePointMap;

    iget v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->c:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CodePointMap;->get(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->value:I

    const/4 v0, 0x1

    return v0
.end method

.method public previous()Z
    .locals 2

    .line 272
    iget v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->c:I

    .line 276
    iget v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    .line 277
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->this$0:Lcom/ibm/icu/util/CodePointMap;

    iget v1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->c:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CodePointMap;->get(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->value:I

    const/4 v0, 0x1

    return v0
.end method

.method public reset(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    .line 238
    iput p2, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->sIndex:I

    const/4 p1, -0x1

    .line 239
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->c:I

    const/4 p1, 0x0

    .line 240
    iput p1, p0, Lcom/ibm/icu/util/CodePointMap$StringIterator;->value:I

    return-void
.end method
