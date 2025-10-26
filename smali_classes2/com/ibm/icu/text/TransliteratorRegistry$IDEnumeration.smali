.class Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field en:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            ">;)V"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-virtual {v0}, Lcom/ibm/icu/util/CaseInsensitiveString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
