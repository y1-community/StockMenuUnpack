.class Lcom/ibm/icu/text/LowercaseTransliterator$2;
.super Ljava/lang/Object;
.source "LowercaseTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/LowercaseTransliterator;->addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
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
.field final synthetic this$0:Lcom/ibm/icu/text/LowercaseTransliterator;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/LowercaseTransliterator;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator$2;->this$0:Lcom/ibm/icu/text/LowercaseTransliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/LowercaseTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator$2;->this$0:Lcom/ibm/icu/text/LowercaseTransliterator;

    invoke-static {v0}, Lcom/ibm/icu/text/LowercaseTransliterator;->access$000(Lcom/ibm/icu/text/LowercaseTransliterator;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
