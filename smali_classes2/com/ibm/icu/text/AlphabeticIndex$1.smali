.class Lcom/ibm/icu/text/AlphabeticIndex$1;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/AlphabeticIndex;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/AlphabeticIndex;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex$1;->this$0:Lcom/ibm/icu/text/AlphabeticIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/text/AlphabeticIndex$Record;Lcom/ibm/icu/text/AlphabeticIndex$Record;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
            "TV;>;",
            "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
            "TV;>;)I"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$1;->this$0:Lcom/ibm/icu/text/AlphabeticIndex;

    invoke-static {v0}, Lcom/ibm/icu/text/AlphabeticIndex;->access$100(Lcom/ibm/icu/text/AlphabeticIndex;)Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/text/AlphabeticIndex$Record;->access$000(Lcom/ibm/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Lcom/ibm/icu/text/AlphabeticIndex$Record;->access$000(Lcom/ibm/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 142
    check-cast p1, Lcom/ibm/icu/text/AlphabeticIndex$Record;

    check-cast p2, Lcom/ibm/icu/text/AlphabeticIndex$Record;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/AlphabeticIndex$1;->compare(Lcom/ibm/icu/text/AlphabeticIndex$Record;Lcom/ibm/icu/text/AlphabeticIndex$Record;)I

    move-result p1

    return p1
.end method
