.class final Lcom/ibm/icu/text/UnescapeTransliterator$2;
.super Ljava/lang/Object;
.source "UnescapeTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/UnescapeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;
    .locals 2

    .line 67
    new-instance p1, Lcom/ibm/icu/text/UnescapeTransliterator;

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "Hex-Any/Java"

    invoke-direct {p1, v1, v0}, Lcom/ibm/icu/text/UnescapeTransliterator;-><init>(Ljava/lang/String;[C)V

    return-object p1

    nop

    :array_0
    .array-data 2
        0x2s
        0x0s
        0x10s
        0x4s
        0x4s
        0x5cs
        0x75s
        -0x1s
    .end array-data
.end method
