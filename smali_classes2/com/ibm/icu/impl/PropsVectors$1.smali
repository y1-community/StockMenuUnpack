.class Lcom/ibm/icu/impl/PropsVectors$1;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/PropsVectors;->compact(Lcom/ibm/icu/impl/PropsVectors$CompactHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/PropsVectors;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/PropsVectors;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/ibm/icu/impl/PropsVectors$1;->this$0:Lcom/ibm/icu/impl/PropsVectors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 7

    .line 387
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 388
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 389
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors$1;->this$0:Lcom/ibm/icu/impl/PropsVectors;

    invoke-static {v0}, Lcom/ibm/icu/impl/PropsVectors;->access$000(Lcom/ibm/icu/impl/PropsVectors;)I

    move-result v0

    const/4 v1, 0x2

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/PropsVectors$1;->this$0:Lcom/ibm/icu/impl/PropsVectors;

    invoke-static {v2}, Lcom/ibm/icu/impl/PropsVectors;->access$100(Lcom/ibm/icu/impl/PropsVectors;)[I

    move-result-object v2

    add-int v3, p1, v1

    aget v2, v2, v3

    iget-object v4, p0, Lcom/ibm/icu/impl/PropsVectors$1;->this$0:Lcom/ibm/icu/impl/PropsVectors;

    invoke-static {v4}, Lcom/ibm/icu/impl/PropsVectors;->access$100(Lcom/ibm/icu/impl/PropsVectors;)[I

    move-result-object v4

    add-int v5, p2, v1

    aget v4, v4, v5

    const/4 v6, -0x1

    if-eq v2, v4, :cond_2

    .line 396
    iget-object p1, p0, Lcom/ibm/icu/impl/PropsVectors$1;->this$0:Lcom/ibm/icu/impl/PropsVectors;

    invoke-static {p1}, Lcom/ibm/icu/impl/PropsVectors;->access$100(Lcom/ibm/icu/impl/PropsVectors;)[I

    move-result-object p1

    aget p1, p1, v3

    iget-object p2, p0, Lcom/ibm/icu/impl/PropsVectors$1;->this$0:Lcom/ibm/icu/impl/PropsVectors;

    invoke-static {p2}, Lcom/ibm/icu/impl/PropsVectors;->access$100(Lcom/ibm/icu/impl/PropsVectors;)[I

    move-result-object p2

    aget p2, p2, v5

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 399
    iget-object v2, p0, Lcom/ibm/icu/impl/PropsVectors$1;->this$0:Lcom/ibm/icu/impl/PropsVectors;

    invoke-static {v2}, Lcom/ibm/icu/impl/PropsVectors;->access$000(Lcom/ibm/icu/impl/PropsVectors;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    add-int/2addr v0, v6

    if-gtz v0, :cond_0

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 384
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/PropsVectors$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
