.class final enum Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;
.super Ljava/lang/Enum;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/LocaleValidityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SpecialCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum anything:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum codepoints:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum normal:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum reorder:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum rgKey:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum subdivision:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 121
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v1, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v3, "anything"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v3, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v5, "reorder"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v5, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v7, "codepoints"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v7, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v9, "subdivision"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v9, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v11, "rgKey"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 120
    sput-object v11, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->$VALUES:[Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .locals 1

    const-string v0, "kr"

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_0
    const-string v0, "vt"

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_1
    const-string v0, "sd"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    sget-object p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_2
    const-string v0, "rg"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    sget-object p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_3
    const-string v0, "x0"

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 132
    sget-object p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    .line 134
    :cond_4
    sget-object p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .locals 1

    .line 120
    const-class v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .locals 1

    .line 120
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->$VALUES:[Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0
.end method
