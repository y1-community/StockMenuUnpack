.class Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiListItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final useSelf:Z


# direct methods
.method constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    .line 398
    iput-boolean p2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;)I
    .locals 3

    .line 402
    iget-boolean v0, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    iget-object v2, p2, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    iget-object v2, p2, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    .line 403
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    iget-object p1, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->modified:Lcom/ibm/icu/util/ULocale;

    iget-object p2, p2, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->modified:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/util/ULocale;->compareTo(Lcom/ibm/icu/util/ULocale;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 393
    check-cast p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;

    check-cast p2, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->compare(Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;)I

    move-result p1

    return p1
.end method
