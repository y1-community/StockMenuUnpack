.class final Lcom/ibm/icu/impl/number/parse/ParsedNumber$1;
.super Ljava/lang/Object;
.source "ParsedNumber.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/parse/ParsedNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/impl/number/parse/ParsedNumber;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/impl/number/parse/ParsedNumber;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)I
    .locals 0

    .line 64
    iget p1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    iget p2, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 61
    check-cast p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    check-cast p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber$1;->compare(Lcom/ibm/icu/impl/number/parse/ParsedNumber;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)I

    move-result p1

    return p1
.end method
