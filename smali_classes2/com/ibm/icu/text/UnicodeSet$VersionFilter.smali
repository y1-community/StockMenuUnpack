.class final Lcom/ibm/icu/text/UnicodeSet$VersionFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VersionFilter"
.end annotation


# instance fields
.field version:Lcom/ibm/icu/util/VersionInfo;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/VersionInfo;)V
    .locals 0

    .line 3325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;->version:Lcom/ibm/icu/util/VersionInfo;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 3328
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getAge(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p1

    .line 3331
    invoke-static {}, Lcom/ibm/icu/text/UnicodeSet;->access$000()Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;->version:Lcom/ibm/icu/util/VersionInfo;

    .line 3332
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
