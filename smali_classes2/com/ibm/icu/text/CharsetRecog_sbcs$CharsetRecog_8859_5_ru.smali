.class Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;
.super Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_5_ru"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 593
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->ngrams:[I

    return-void

    :array_0
    .array-data 4
        0x20d220
        0x20d2de
        0x20d4de
        0x20d7d0
        0x20d820
        0x20dad0
        0x20dade
        0x20ddd0
        0x20ddd5
        0x20ded1
        0x20dfde
        0x20dfe0
        0x20e0d0
        0x20e1de
        0x20e1e2
        0x20e2de
        0x20e7e2
        0x20ede2
        0xd0ddd8
        0xd0e2ec
        0xd3de20
        0xd5dbec
        0xd5ddd8
        0xd5e1e2
        0xd5e220
        0xd820df
        0xd8d520
        0xd8d820
        0xd8ef20
        0xdbd5dd
        0xdbd820
        0xdbecdd
        0xddd020
        0xddd520
        0xddd8d5
        0xddd8ef
        0xddde20
        0xddded2
        0xde20d2
        0xde20df
        0xde20e1
        0xded220
        0xded2d0
        0xded3de
        0xded920
        0xdedbec
        0xdedc20
        0xdee1e2
        0xdfdedb
        0xdfe0d5
        0xdfe0d8
        0xdfe0de
        0xe0d0d2
        0xe0d5d4
        0xe1e2d0
        0xe1e2d2
        0xe1e2d8
        0xe1ef20
        0xe2d5db
        0xe2de20
        0xe2dee0
        0xe2ec20
        0xe7e2de
        0xebe520
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 591
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    const-string v0, "ru"

    return-object v0
.end method

.method public match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 2

    .line 609
    sget-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->ngrams:[I

    sget-object v1, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->byteMap:[B

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->match(Lcom/ibm/icu/text/CharsetDetector;[I[B)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 610
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method
