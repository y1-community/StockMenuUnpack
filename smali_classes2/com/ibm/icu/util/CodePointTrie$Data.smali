.class abstract Lcom/ibm/icu/util/CodePointTrie$Data;
.super Ljava/lang/Object;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Data"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/CodePointTrie$1;)V
    .locals 0

    .line 600
    invoke-direct {p0}, Lcom/ibm/icu/util/CodePointTrie$Data;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getDataLength()I
.end method

.method abstract getFromIndex(I)I
.end method

.method abstract getValueWidth()Lcom/ibm/icu/util/CodePointTrie$ValueWidth;
.end method

.method abstract write(Ljava/io/DataOutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
