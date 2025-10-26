.class final Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables$1;
.super Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;->load(Ljava/lang/String;)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 0

    .line 670
    new-instance p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-direct {p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;-><init>(Z)V

    return-object p1
.end method
