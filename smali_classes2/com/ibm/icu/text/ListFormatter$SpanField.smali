.class public final Lcom/ibm/icu/text/ListFormatter$SpanField;
.super Lcom/ibm/icu/text/UFormat$SpanField;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanField"
.end annotation


# static fields
.field public static final LIST_SPAN:Lcom/ibm/icu/text/ListFormatter$SpanField;

.field private static final serialVersionUID:J = 0x3174409532ed7c63L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$SpanField;

    const-string v1, "list-span"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ListFormatter$SpanField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$SpanField;->LIST_SPAN:Lcom/ibm/icu/text/ListFormatter$SpanField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UFormat$SpanField;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/ibm/icu/text/ListFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$SpanField;->LIST_SPAN:Lcom/ibm/icu/text/ListFormatter$SpanField;

    invoke-virtual {v1}, Lcom/ibm/icu/text/ListFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 144
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
