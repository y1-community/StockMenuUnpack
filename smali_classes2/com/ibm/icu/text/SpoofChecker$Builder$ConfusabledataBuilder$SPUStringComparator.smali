.class Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUStringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1086
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    invoke-direct {v0}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->INSTANCE:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I
    .locals 2

    .line 1075
    iget-object v0, p1, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1076
    iget-object v1, p2, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1082
    :cond_1
    iget-object p1, p1, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    iget-object p2, p2, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1072
    check-cast p1, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    check-cast p2, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->compare(Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I

    move-result p1

    return p1
.end method
