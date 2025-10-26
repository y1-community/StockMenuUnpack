.class public Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiListItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;
    }
.end annotation


# instance fields
.field public final minimized:Lcom/ibm/icu/util/ULocale;

.field public final modified:Lcom/ibm/icu/util/ULocale;

.field public final nameInDisplayLocale:Ljava/lang/String;

.field public final nameInSelf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->minimized:Lcom/ibm/icu/util/ULocale;

    .line 336
    iput-object p2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->modified:Lcom/ibm/icu/util/ULocale;

    .line 337
    iput-object p3, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    .line 338
    iput-object p4, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    return-void
.end method

.method public static getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Comparator<",
            "Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 351
    instance-of v2, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;

    if-nez v2, :cond_1

    goto :goto_1

    .line 354
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;

    .line 355
    iget-object v2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->minimized:Lcom/ibm/icu/util/ULocale;

    iget-object v3, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->minimized:Lcom/ibm/icu/util/ULocale;

    .line 357
    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->modified:Lcom/ibm/icu/util/ULocale;

    iget-object p1, p1, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->modified:Lcom/ibm/icu/util/ULocale;

    .line 358
    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->modified:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->minimized:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->modified:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
