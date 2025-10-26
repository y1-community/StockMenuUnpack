.class abstract Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LsrIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/ibm/icu/impl/locale/LSR;",
        ">;"
    }
.end annotation


# instance fields
.field bestDesiredIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;->bestDesiredIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/LocaleMatcher$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract rememberCurrent(I)V
.end method

.method public remove()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
