.class Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;
.super Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUDataTable"
.end annotation


# instance fields
.field private final bundle:Lcom/ibm/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)V
    .locals 0

    .line 644
    invoke-direct {p0, p3}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;-><init>(Z)V

    .line 646
    invoke-virtual {p2}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p2

    .line 645
    invoke-static {p1, p2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    iget-boolean v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->nullIfNotFound:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-static {v0, p1, p2, p3, v1}, Lcom/ibm/icu/impl/ICUResourceTableAccess;->getTableString(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method
