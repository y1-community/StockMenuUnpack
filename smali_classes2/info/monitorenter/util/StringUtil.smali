.class public final Linfo/monitorenter/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static instance:Linfo/monitorenter/util/StringUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prefixIntersection(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 365
    :goto_0
    new-instance p1, Linfo/monitorenter/util/Entry;

    invoke-direct {p1, p0, v1}, Linfo/monitorenter/util/Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
