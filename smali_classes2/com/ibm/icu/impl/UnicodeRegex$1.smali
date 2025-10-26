.class Lcom/ibm/icu/impl/UnicodeRegex$1;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UnicodeRegex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UnicodeRegex;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UnicodeRegex;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/ibm/icu/impl/UnicodeRegex$1;->this$0:Lcom/ibm/icu/impl/UnicodeRegex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 366
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    .line 368
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
