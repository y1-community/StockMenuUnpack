.class final Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;
.super Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ULocaleLsrIterator"
.end annotation


# instance fields
.field private current:Lcom/ibm/icu/util/ULocale;

.field private locales:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private remembered:Lcom/ibm/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 815
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;-><init>(Lcom/ibm/icu/util/LocaleMatcher$1;)V

    .line 816
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->locales:Ljava/util/Iterator;

    return-void
.end method

.method static synthetic access$1500(Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 811
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->remembered:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/ibm/icu/impl/locale/LSR;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->current:Lcom/ibm/icu/util/ULocale;

    .line 827
    invoke-static {v0}, Lcom/ibm/icu/util/LocaleMatcher;->access$1200(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 811
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->next()Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public rememberCurrent(I)V
    .locals 0

    .line 832
    iput p1, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->bestDesiredIndex:I

    .line 833
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->current:Lcom/ibm/icu/util/ULocale;

    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->remembered:Lcom/ibm/icu/util/ULocale;

    return-void
.end method
