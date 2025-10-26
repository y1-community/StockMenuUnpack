.class final Lcom/ibm/icu/text/RemoveTransliterator$1;
.super Ljava/lang/Object;
.source "RemoveTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/RemoveTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;
    .locals 0

    .line 30
    new-instance p1, Lcom/ibm/icu/text/RemoveTransliterator;

    invoke-direct {p1}, Lcom/ibm/icu/text/RemoveTransliterator;-><init>()V

    return-object p1
.end method
