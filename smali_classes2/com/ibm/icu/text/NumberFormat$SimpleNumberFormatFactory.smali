.class public abstract Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;
.super Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleNumberFormatFactory"
.end annotation


# instance fields
.field final localeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final visible:Z


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x1

    .line 1000
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Lcom/ibm/icu/util/ULocale;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Z)V
    .locals 0

    .line 1008
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    .line 1009
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    .line 1010
    iput-boolean p2, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x1

    .line 982
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 0

    .line 990
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    .line 991
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    .line 992
    iput-boolean p2, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return-void
.end method


# virtual methods
.method public final getSupportedLocaleNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    return-object v0
.end method

.method public final visible()Z
    .locals 1

    .line 1019
    iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return v0
.end method
