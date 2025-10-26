.class Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterable;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRangeIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .line 4325
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$1;)V
    .locals 0

    .line 4325
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    .line 4328
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$1;)V

    return-object v0
.end method
