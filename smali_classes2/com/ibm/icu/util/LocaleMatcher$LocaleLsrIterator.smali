.class final Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;
.super Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocaleLsrIterator"
.end annotation


# instance fields
.field private current:Ljava/util/Locale;

.field private locales:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private remembered:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 841
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;-><init>(Lcom/ibm/icu/util/LocaleMatcher$1;)V

    .line 842
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->locales:Ljava/util/Iterator;

    return-void
.end method

.method static synthetic access$1600(Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;)Ljava/util/Locale;
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->remembered:Ljava/util/Locale;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/ibm/icu/impl/locale/LSR;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->current:Ljava/util/Locale;

    .line 853
    invoke-static {v0}, Lcom/ibm/icu/util/LocaleMatcher;->access$1300(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 837
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->next()Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public rememberCurrent(I)V
    .locals 0

    .line 858
    iput p1, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->bestDesiredIndex:I

    .line 859
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->current:Ljava/util/Locale;

    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->remembered:Ljava/util/Locale;

    return-void
.end method
