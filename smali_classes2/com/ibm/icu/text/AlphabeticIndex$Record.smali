.class public Lcom/ibm/icu/text/AlphabeticIndex$Record;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)V"
        }
    .end annotation

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    .line 850
    iput-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;Lcom/ibm/icu/text/AlphabeticIndex$1;)V
    .locals 0

    .line 844
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;
    .locals 0

    .line 844
    iget-object p0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
