.class public Lcom/ibm/icu/impl/ICULangDataTables;
.super Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.source "ICULangDataTables.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com/ibm/icu/impl/data/icudt69b/lang"

    .line 13
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 0

    .line 11
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->get(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object p1

    return-object p1
.end method
