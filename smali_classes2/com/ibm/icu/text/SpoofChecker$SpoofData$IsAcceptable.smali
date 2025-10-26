.class final Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/SpoofChecker$1;)V
    .locals 0

    .line 1831
    invoke-direct {p0}, Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 1834
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    aget-byte v1, p1, v2

    if-nez v1, :cond_0

    aget-byte v1, p1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
