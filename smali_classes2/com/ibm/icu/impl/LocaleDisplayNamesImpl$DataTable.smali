.class public Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTable"
.end annotation


# instance fields
.field final nullIfNotFound:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-boolean p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->nullIfNotFound:Z

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 636
    iget-boolean p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->nullIfNotFound:Z

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    return-object p3
.end method

.method getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 628
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method
