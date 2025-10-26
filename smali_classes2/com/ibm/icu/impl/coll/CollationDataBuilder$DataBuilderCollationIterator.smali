.class final Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;
.super Lcom/ibm/icu/impl/coll/CollationIterator;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataBuilderCollationIterator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

.field protected final builderData:Lcom/ibm/icu/impl/coll/CollationData;

.field protected final jamoCE32s:[I

.field protected pos:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1202
    const-class v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 3

    const/4 v0, 0x0

    .line 1204
    invoke-direct {p0, p2, v0}, Lcom/ibm/icu/impl/coll/CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;Z)V

    const/16 v1, 0x43

    new-array v2, v1, [I

    .line 1323
    iput-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    .line 1205
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    .line 1206
    iput-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1207
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object p1, p2, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1210
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result p1

    .line 1211
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    const/4 v2, 0x7

    invoke-static {v2, p1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result p1

    or-int/lit16 p1, p1, 0x100

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    iput-object p2, p1, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    neg-int p1, p1

    invoke-static {v0, v1, p1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return-void
.end method

.method fetchCEs(Ljava/lang/CharSequence;I[JI)I
    .locals 5

    .line 1219
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    .line 1220
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    .line 1221
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    .line 1223
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->reset()V

    .line 1224
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    .line 1225
    iput p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1226
    :cond_0
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 1228
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->clearCEs()V

    .line 1229
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 1230
    iget p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1231
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object p2, p2, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result p2

    const/16 v0, 0xc0

    if-ne p2, v0, :cond_1

    .line 1234
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object p2, p2, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1235
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    goto :goto_0

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Lcom/ibm/icu/impl/coll/CollationData;

    move-object v4, v0

    move v0, p2

    move-object p2, v4

    :goto_0
    const/4 v1, 0x1

    .line 1239
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->appendCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;IIZ)V

    const/4 p1, 0x0

    .line 1240
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->getCEsLength()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->getCE(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    const/16 p2, 0x1f

    if-ge p4, p2, :cond_2

    .line 1244
    aput-wide v0, p3, p4

    :cond_2
    add-int/lit8 p4, p4, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return p4
.end method

.method protected forwardNumCodePoints(I)V
    .locals 2

    .line 1286
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0, v1, p1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return-void
.end method

.method protected getCE32FromBuilderData(I)I
    .locals 2

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    .line 1303
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    .line 1304
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result p1

    return p1

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    .line 1307
    iget v0, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1310
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->buildContext(Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1312
    :catch_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->clearContexts()V

    .line 1313
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->buildContext(Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 1315
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    .line 1317
    :cond_1
    iget p1, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    return p1
.end method

.method protected getDataCE32(I)I
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result p1

    return p1
.end method

.method public getOffset()I
    .locals 1

    .line 1261
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return v0
.end method

.method public nextCodePoint()I
    .locals 3

    .line 1266
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1270
    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return v0
.end method

.method public previousCodePoint()I
    .locals 3

    .line 1276
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1279
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1280
    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return v0
.end method

.method public resetToOffset(I)V
    .locals 0

    .line 1255
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->reset()V

    .line 1256
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return-void
.end method
