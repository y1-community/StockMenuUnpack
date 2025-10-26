.class synthetic Lcom/ibm/icu/text/ListFormatter$1;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$text$ListFormatter$Type:[I

.field static final synthetic $SwitchMap$com$ibm$icu$text$ListFormatter$Width:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 691
    invoke-static {}, Lcom/ibm/icu/text/ListFormatter$Type;->values()[Lcom/ibm/icu/text/ListFormatter$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Type:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/ibm/icu/text/ListFormatter$Type;->AND:Lcom/ibm/icu/text/ListFormatter$Type;

    invoke-virtual {v2}, Lcom/ibm/icu/text/ListFormatter$Type;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Type:[I

    sget-object v3, Lcom/ibm/icu/text/ListFormatter$Type;->OR:Lcom/ibm/icu/text/ListFormatter$Type;

    invoke-virtual {v3}, Lcom/ibm/icu/text/ListFormatter$Type;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Type:[I

    sget-object v4, Lcom/ibm/icu/text/ListFormatter$Type;->UNITS:Lcom/ibm/icu/text/ListFormatter$Type;

    invoke-virtual {v4}, Lcom/ibm/icu/text/ListFormatter$Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 693
    :catch_2
    invoke-static {}, Lcom/ibm/icu/text/ListFormatter$Width;->values()[Lcom/ibm/icu/text/ListFormatter$Width;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Width:[I

    :try_start_3
    sget-object v4, Lcom/ibm/icu/text/ListFormatter$Width;->WIDE:Lcom/ibm/icu/text/ListFormatter$Width;

    invoke-virtual {v4}, Lcom/ibm/icu/text/ListFormatter$Width;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Width:[I

    sget-object v3, Lcom/ibm/icu/text/ListFormatter$Width;->SHORT:Lcom/ibm/icu/text/ListFormatter$Width;

    invoke-virtual {v3}, Lcom/ibm/icu/text/ListFormatter$Width;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/ibm/icu/text/ListFormatter$1;->$SwitchMap$com$ibm$icu$text$ListFormatter$Width:[I

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Width;->NARROW:Lcom/ibm/icu/text/ListFormatter$Width;

    invoke-virtual {v1}, Lcom/ibm/icu/text/ListFormatter$Width;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
