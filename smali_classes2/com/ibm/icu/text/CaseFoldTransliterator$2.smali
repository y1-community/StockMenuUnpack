.class Lcom/ibm/icu/text/CaseFoldTransliterator$2;
.super Ljava/lang/Object;
.source "CaseFoldTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/CaseFoldTransliterator;->addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/text/Transform<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/CaseFoldTransliterator;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/CaseFoldTransliterator;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/ibm/icu/text/CaseFoldTransliterator$2;->this$0:Lcom/ibm/icu/text/CaseFoldTransliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CaseFoldTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 123
    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
