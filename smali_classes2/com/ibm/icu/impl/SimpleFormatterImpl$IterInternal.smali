.class public Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;
.super Ljava/lang/Object;
.source "SimpleFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/SimpleFormatterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IterInternal"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DONE:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 416
    const-class v0, Lcom/ibm/icu/impl/SimpleFormatterImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArgIndex(J)I
    .locals 0

    long-to-int p1, p0

    return p1
.end method

.method public static step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J
    .locals 3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit8 p1, p1, 0x1

    .line 423
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v1, 0x100

    if-le p0, v1, :cond_0

    .line 424
    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    sub-int/2addr p0, v1

    add-int/lit8 p1, p1, 0x1

    .line 426
    :try_start_0
    invoke-interface {p3, p2, p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 428
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 432
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    int-to-long v1, p1

    shl-long v0, v1, v0

    .line 435
    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method
