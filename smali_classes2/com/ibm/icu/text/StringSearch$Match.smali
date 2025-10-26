.class Lcom/ibm/icu/text/StringSearch$Match;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Match"
.end annotation


# instance fields
.field limit_:I

.field start_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1000
    iput v0, p0, Lcom/ibm/icu/text/StringSearch$Match;->start_:I

    .line 1001
    iput v0, p0, Lcom/ibm/icu/text/StringSearch$Match;->limit_:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/StringSearch$1;)V
    .locals 0

    .line 999
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch$Match;-><init>()V

    return-void
.end method
