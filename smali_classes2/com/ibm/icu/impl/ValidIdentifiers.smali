.class public Lcom/ibm/icu/impl/ValidIdentifiers;
.super Ljava/lang/Object;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ValidIdentifiers$ValidityData;,
        Lcom/ibm/icu/impl/ValidIdentifiers$ValiditySet;,
        Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;,
        Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
            "Lcom/ibm/icu/impl/ValidIdentifiers$ValiditySet;",
            ">;>;"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    return-object v0
.end method

.method public static isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;)Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 174
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 175
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ValidIdentifiers$ValiditySet;

    if-eqz v1, :cond_0

    .line 177
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ValidIdentifiers$ValiditySet;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isValid(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 189
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-static {p3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 191
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 192
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ValidIdentifiers$ValiditySet;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1, p2, p3}, Lcom/ibm/icu/impl/ValidIdentifiers$ValiditySet;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
