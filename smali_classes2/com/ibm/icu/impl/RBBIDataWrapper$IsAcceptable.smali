.class final Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/RBBIDataWrapper$1;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 181
    aget-byte v1, p1, v0

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte p1, p1, v3

    add-int/2addr v1, p1

    const/high16 p1, 0x6000000

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
