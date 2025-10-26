.class final Lcom/ibm/icu/text/UppercaseTransliterator$1;
.super Ljava/lang/Object;
.source "UppercaseTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/UppercaseTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;
    .locals 1

    .line 34
    new-instance p1, Lcom/ibm/icu/text/UppercaseTransliterator;

    sget-object v0, Lcom/ibm/icu/util/ULocale;->US:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, v0}, Lcom/ibm/icu/text/UppercaseTransliterator;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object p1
.end method
