.class abstract Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.super Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICUDataTables"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;-><init>()V

    .line 681
    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 2

    .line 686
    new-instance v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)V

    return-object v0
.end method
