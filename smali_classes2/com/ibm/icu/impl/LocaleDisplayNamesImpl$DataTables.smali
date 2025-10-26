.class abstract Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DataTables"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;
    .locals 0

    .line 665
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 667
    :catchall_0
    new-instance p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables$1;

    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables$1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract get(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;
.end method
