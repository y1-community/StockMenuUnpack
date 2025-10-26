.class public Lcom/ibm/icu/text/AlphabeticIndex$Bucket;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private displayBucket:Lcom/ibm/icu/text/AlphabeticIndex$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;"
        }
    .end annotation
.end field

.field private displayIndex:I

.field private final label:Ljava/lang/String;

.field private final labelType:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

.field private final lowerBoundary:Ljava/lang/String;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;)V
    .locals 0

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    .line 942
    iput-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    .line 943
    iput-object p3, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->labelType:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;Lcom/ibm/icu/text/AlphabeticIndex$1;)V
    .locals 0

    .line 895
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->labelType:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)I
    .locals 0

    .line 895
    iget p0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return p0
.end method

.method static synthetic access$1402(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;I)I
    .locals 0

    .line 895
    iput p1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->displayBucket:Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    return-object p0
.end method

.method static synthetic access$902(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->displayBucket:Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    return-object p1
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelType()Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->labelType:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez v0, :cond_0

    .line 983
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 985
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{labelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->labelType:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lowerBoundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
