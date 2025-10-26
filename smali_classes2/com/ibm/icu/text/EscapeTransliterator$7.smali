.class final Lcom/ibm/icu/text/EscapeTransliterator$7;
.super Ljava/lang/Object;
.source "EscapeTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/EscapeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;
    .locals 8

    .line 142
    new-instance p1, Lcom/ibm/icu/text/EscapeTransliterator;

    const-string v1, "Any-Hex/Plain"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x10

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/ibm/icu/text/EscapeTransliterator;)V

    return-object p1
.end method
