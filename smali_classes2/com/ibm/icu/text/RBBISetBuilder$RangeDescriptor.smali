.class Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RBBISetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeDescriptor"
.end annotation


# instance fields
.field fEndChar:I

.field fFirstInGroup:Z

.field fIncludesDict:Z

.field fIncludesSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

.field fNum:I

.field fStartChar:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 45
    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 46
    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 47
    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    .line 48
    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 45
    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 46
    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 47
    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    .line 48
    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 59
    iget v0, p1, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 60
    iget v0, p1, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 61
    iget v0, p1, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 62
    iget-boolean v0, p1, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    .line 63
    iget-boolean v0, p1, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method isDictionaryRange()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RBBINode;

    .line 103
    iget-object v2, v2, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, v2, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v2, :cond_0

    .line 106
    iget v3, v2, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 107
    iget-object v2, v2, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    const-string v3, "dictionary"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method split(I)V
    .locals 2

    .line 73
    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 74
    new-instance v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;-><init>(Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;)V

    .line 78
    iput p1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    sub-int/2addr p1, v1

    .line 79
    iput p1, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 80
    iget-object p1, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    iput-object p1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 81
    iput-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    return-void
.end method
