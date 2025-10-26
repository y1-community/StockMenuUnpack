.class Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUStringPool"
.end annotation


# instance fields
.field private fHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    .line 1098
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;)Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    if-nez v0, :cond_0

    .line 1117
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;-><init>(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getByIndex(I)Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public sort()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    sget-object v1, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->INSTANCE:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
