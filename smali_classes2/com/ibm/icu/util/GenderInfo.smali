.class public Lcom/ibm/icu/util/GenderInfo;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/GenderInfo$Cache;,
        Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;,
        Lcom/ibm/icu/util/GenderInfo$Gender;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static genderInfoCache:Lcom/ibm/icu/util/GenderInfo$Cache;

.field private static neutral:Lcom/ibm/icu/util/GenderInfo;


# instance fields
.field private final style:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 221
    new-instance v0, Lcom/ibm/icu/util/GenderInfo;

    sget-object v1, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/GenderInfo;-><init>(Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;)V

    sput-object v0, Lcom/ibm/icu/util/GenderInfo;->neutral:Lcom/ibm/icu/util/GenderInfo;

    .line 259
    new-instance v0, Lcom/ibm/icu/util/GenderInfo$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/GenderInfo$Cache;-><init>(Lcom/ibm/icu/util/GenderInfo$1;)V

    sput-object v0, Lcom/ibm/icu/util/GenderInfo;->genderInfoCache:Lcom/ibm/icu/util/GenderInfo$Cache;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/ibm/icu/util/GenderInfo;->style:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    return-void
.end method

.method static synthetic access$000()Lcom/ibm/icu/util/GenderInfo;
    .locals 1

    .line 30
    sget-object v0, Lcom/ibm/icu/util/GenderInfo;->neutral:Lcom/ibm/icu/util/GenderInfo;

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GenderInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    sget-object v0, Lcom/ibm/icu/util/GenderInfo;->genderInfoCache:Lcom/ibm/icu/util/GenderInfo$Cache;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/GenderInfo$Cache;->get(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/util/GenderInfo;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/GenderInfo;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GenderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getListGender(Ljava/util/List;)Lcom/ibm/icu/util/GenderInfo$Gender;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/GenderInfo$Gender;",
            ">;)",
            "Lcom/ibm/icu/util/GenderInfo$Gender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    .line 172
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/GenderInfo$1;->$SwitchMap$com$ibm$icu$util$GenderInfo$ListGenderStyle:[I

    iget-object v3, p0, Lcom/ibm/icu/util/GenderInfo;->style:Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v3}, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_d

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_2

    .line 206
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    .line 199
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/GenderInfo$Gender;

    .line 200
    sget-object v1, Lcom/ibm/icu/util/GenderInfo$Gender;->FEMALE:Lcom/ibm/icu/util/GenderInfo$Gender;

    if-eq v0, v1, :cond_3

    .line 201
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->MALE:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    .line 204
    :cond_4
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->FEMALE:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    .line 178
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/util/GenderInfo$Gender;

    .line 179
    sget-object v6, Lcom/ibm/icu/util/GenderInfo$1;->$SwitchMap$com$ibm$icu$util$GenderInfo$Gender:[I

    invoke-virtual {v5}, Lcom/ibm/icu/util/GenderInfo$Gender;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v2, :cond_9

    if-eq v5, v4, :cond_7

    if-eq v5, v3, :cond_6

    goto :goto_0

    .line 193
    :cond_6
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    :cond_7
    if-eqz v0, :cond_8

    .line 188
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    .line 182
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1

    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    if-eqz v1, :cond_c

    .line 196
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->MALE:Lcom/ibm/icu/util/GenderInfo$Gender;

    goto :goto_1

    :cond_c
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->FEMALE:Lcom/ibm/icu/util/GenderInfo$Gender;

    :goto_1
    return-object p1

    .line 174
    :cond_d
    sget-object p1, Lcom/ibm/icu/util/GenderInfo$Gender;->OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p1
.end method

.method public varargs getListGender([Lcom/ibm/icu/util/GenderInfo$Gender;)Lcom/ibm/icu/util/GenderInfo$Gender;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GenderInfo;->getListGender(Ljava/util/List;)Lcom/ibm/icu/util/GenderInfo$Gender;

    move-result-object p1

    return-object p1
.end method
