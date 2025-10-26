.class final Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConditionalCE32"
.end annotation


# instance fields
.field builtCE32:I

.field ce32:I

.field context:Ljava/lang/String;

.field defaultCE32:I

.field next:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    .line 356
    iput p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    const/4 p1, 0x1

    .line 357
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    .line 358
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    const/4 p1, -0x1

    .line 359
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    return-void
.end method


# virtual methods
.method hasContext()Z
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method prefixLength()I
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
